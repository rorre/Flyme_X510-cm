.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Axis;,
        Landroid/graphics/FontListParser$Config;,
        Landroid/graphics/FontListParser$Family;,
        Landroid/graphics/FontListParser$Font;
    }
.end annotation


# static fields
.field private static final FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 165
    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 195
    const-string/jumbo v0, "[\\x00-\\xFF]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 201
    const-string/jumbo v0, "-?(([0-9]+(\\.[0-9]+)?)|(\\.[0-9]+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 200
    sput-object v0, Landroid/graphics/FontListParser;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "configFilename"    # Ljava/io/File;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "in":Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v0, "in":Ljava/io/FileInputStream;
    invoke-static {v0, p1}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 107
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    instance-of v3, p0, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_1

    .line 108
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object v1, v2

    .line 113
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 114
    invoke-static {v1, p1}, Landroid/graphics/FontListParser;->parseNormalFormat(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 116
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 114
    :cond_0
    return-object v3

    .line 110
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :cond_1
    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 115
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v3

    .line 116
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 115
    :cond_2
    throw v3
.end method

.method public static parseNormalFormat(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 123
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 125
    invoke-static {v0, p1}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v1

    return-object v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 230
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 231
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 232
    const-string/jumbo v2, "to"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "weight"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 235
    const/16 v2, 0x190

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    .line 239
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 240
    return-object v0

    .line 237
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    goto :goto_0
.end method

.method private static readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Axis;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "tag":I
    const-string/jumbo v4, "tag"

    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "tagStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    sget-object v4, Landroid/graphics/FontListParser;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    .line 209
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    .line 208
    add-int/2addr v4, v5

    .line 210
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    .line 208
    add-int/2addr v4, v5

    .line 211
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 208
    add-int v2, v4, v5

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "styleValue":F
    const-string/jumbo v4, "stylevalue"

    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "styleValueStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    sget-object v4, Landroid/graphics/FontListParser;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 224
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 225
    new-instance v4, Landroid/graphics/FontListParser$Axis;

    invoke-direct {v4, v2, v0}, Landroid/graphics/FontListParser$Axis;-><init>(IF)V

    return-object v4

    .line 213
    .end local v0    # "styleValue":F
    .end local v1    # "styleValueStr":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v5, "Invalid tag attribute value."

    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 221
    .restart local v0    # "styleValue":F
    .restart local v1    # "styleValueStr":Ljava/lang/String;
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v5, "Invalid styleValue attribute value."

    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 130
    new-instance v0, Landroid/graphics/FontListParser$Config;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    .line 131
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const-string/jumbo v2, "familyset"

    const/4 v3, 0x0

    invoke-interface {p0, v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 133
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-static {p0, p1}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Family;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v2, "alias"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 143
    .end local v1    # "tag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Family;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 148
    const-string/jumbo v5, "name"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "lang"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "lang":Ljava/lang/String;
    const-string/jumbo v5, "variant"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "variant":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 153
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 154
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "font"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-static {p0, p1}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Font;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 161
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/graphics/FontListParser$Family;

    invoke-direct {v5, v2, v0, v1, v4}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Font;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 170
    const-string/jumbo v0, "index"

    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "indexStr":Ljava/lang/String;
    if-nez v7, :cond_2

    const/4 v2, 0x0

    .line 172
    .local v2, "index":I
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v3, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    const-string/jumbo v0, "weight"

    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "weightStr":Ljava/lang/String;
    if-nez v9, :cond_3

    const/16 v4, 0x190

    .line 175
    .local v4, "weight":I
    :goto_1
    const-string/jumbo v0, "italic"

    const-string/jumbo v10, "style"

    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 176
    .local v5, "isItalic":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v6, "filename":Ljava/lang/StringBuilder;
    :cond_0
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v10, 0x3

    if-eq v0, v10, :cond_5

    .line 178
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v10, 0x4

    if-ne v0, v10, :cond_1

    .line 179
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    .line 182
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v0, "axis"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Axis;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    .end local v2    # "index":I
    .end local v3    # "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    .end local v4    # "weight":I
    .end local v5    # "isItalic":Z
    .end local v6    # "filename":Ljava/lang/StringBuilder;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "weightStr":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "index":I
    goto :goto_0

    .line 174
    .restart local v3    # "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    .restart local v9    # "weightStr":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "weight":I
    goto :goto_1

    .line 186
    .restart local v5    # "isItalic":Z
    .restart local v6    # "filename":Ljava/lang/StringBuilder;
    .restart local v8    # "tag":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 189
    .end local v8    # "tag":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    sget-object v10, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "fullFilename":Ljava/lang/String;
    new-instance v0, Landroid/graphics/FontListParser$Font;

    invoke-direct/range {v0 .. v5}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;ILjava/util/List;IZ)V

    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 246
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 252
    goto :goto_0

    .line 243
    :cond_0
    return-void

    .line 246
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

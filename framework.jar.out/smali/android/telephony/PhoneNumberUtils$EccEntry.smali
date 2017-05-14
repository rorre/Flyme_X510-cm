.class public Landroid/telephony/PhoneNumberUtils$EccEntry;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EccEntry"
.end annotation


# static fields
.field public static final CATEGORY_ATTR:Ljava/lang/String; = "Category"

.field public static final CDMA_ECC_LIST_PATH:Ljava/lang/String; = "/system/etc/cdma_ecc_list.xml"

.field public static final CONDITION_ATTR:Ljava/lang/String; = "Condition"

.field public static final ECC_ALWAYS:Ljava/lang/String; = "1"

.field public static final ECC_ATTR:Ljava/lang/String; = "Ecc"

.field public static final ECC_ENTRY_TAG:Ljava/lang/String; = "EccEntry"

.field public static final ECC_FOR_MMI:Ljava/lang/String; = "2"

.field public static final ECC_LIST_PATH:Ljava/lang/String; = "/system/etc/ecc_list.xml"

.field public static final ECC_NO_SIM:Ljava/lang/String; = "0"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCondition:Ljava/lang/String;

.field private mEcc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCategory:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCondition:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getEcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCategory"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCategory:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCondition"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCondition:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setEcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "strEcc"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nEcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, ", "

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "Condition"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

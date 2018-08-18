.class public Lcom/android/internal/telephony/OperatorSimInfo;
.super Ljava/lang/Object;
.source "OperatorSimInfo.java"


# instance fields
.field private final GENERIC_SIM_DRAWABLE_TAG:Ljava/lang/String;

.field private final OPERATOR_DISPLAY_NAME_TAG:Ljava/lang/String;

.field private final OPERATOR_MCC_MNC_ARRAY_TAG:Ljava/lang/String;

.field private final OPERATOR_SIM_DRAWABLE_TAG:Ljava/lang/String;

.field private final PRE_PACKAGE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGenericSimDrawableIcon:Landroid/graphics/drawable/Drawable;

.field private mIsCustomSimFeatureEnabled:Z

.field private mOperatorDisplayName:Ljava/lang/String;

.field private mOperatorDrawableIcon:Landroid/graphics/drawable/Drawable;

.field private mSize:I

.field private mccMncList:[Ljava/lang/String;

.field private prePackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v1, "generic_sim_drawable_name"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->GENERIC_SIM_DRAWABLE_TAG:Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "mcc_mnc_list"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_MCC_MNC_ARRAY_TAG:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "operator_display_name"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_DISPLAY_NAME_TAG:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "operator_sim_drawable_name"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_SIM_DRAWABLE_TAG:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "com.android.customsiminfo.res"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->PRE_PACKAGE_NAME:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "OperatorSimInfo"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->TAG:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mIsCustomSimFeatureEnabled:Z

    .line 57
    iput-object v3, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mContext:Landroid/content/Context;

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->isOperatorFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v1, "com.android.customsiminfo.res"

    .line 64
    const/4 v2, 0x2

    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getMccMncListFromApp()V

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorLabelFromApp()V

    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorDrawableFromApp()V

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getGenericDrawableFromApp()V

    .line 59
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OperatorSimInfo"

    const-string/jumbo v2, "Create Res Apk Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getGenericDrawableFromApp()V
    .locals 8

    .prologue
    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 119
    const-string/jumbo v5, "generic_sim_drawable_name"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.android.customsiminfo.res"

    .line 118
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "genericDrawableStringResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "genericDrawableNameString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 123
    const-string/jumbo v5, "drawable"

    const-string/jumbo v6, "com.android.customsiminfo.res"

    .line 122
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, "genericSimDrawableResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mGenericSimDrawableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "genericDrawableNameString":Ljava/lang/String;
    .end local v1    # "genericDrawableStringResId":I
    .end local v3    # "genericSimDrawableResId":I
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "genericResException":Ljava/lang/Exception;
    const-string/jumbo v4, "OperatorSimInfo"

    const-string/jumbo v5, "Generic icon not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMccMncListFromApp()V
    .locals 5

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "mcc_mnc_list"

    const-string/jumbo v3, "array"

    const-string/jumbo v4, "com.android.customsiminfo.res"

    .line 79
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "arrayResId":I
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    .line 78
    return-void
.end method

.method private getOperatorDrawableFromApp()V
    .locals 8

    .prologue
    .line 101
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    const-string/jumbo v5, "operator_sim_drawable_name"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.android.customsiminfo.res"

    .line 101
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "drawableStringResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "drawableNameString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 106
    const-string/jumbo v5, "drawable"

    const-string/jumbo v6, "com.android.customsiminfo.res"

    .line 105
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "drawableResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDrawableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "drawableNameString":Ljava/lang/String;
    .end local v1    # "drawableResId":I
    .end local v2    # "drawableStringResId":I
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "resException":Ljava/lang/Exception;
    const-string/jumbo v4, "OperatorSimInfo"

    const-string/jumbo v5, "Operator icon not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOperatorLabelFromApp()V
    .locals 6

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    const-string/jumbo v3, "operator_display_name"

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "com.android.customsiminfo.res"

    .line 88
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "labelResId":I
    iget-object v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "labelResId":I
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "textException":Ljava/lang/Exception;
    const-string/jumbo v2, "OperatorSimInfo"

    const-string/jumbo v3, "Operator label not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getGenericSimDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mGenericSimDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOperatorDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOperatorNameForSubId(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "label":Ljava/lang/String;
    return-object v0
.end method

.method public isOperatorFeatureEnabled()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    const v1, 0x11200e8

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSimTypeOperator(I)Z
    .locals 6
    .param p1, "slotIndex"    # I

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "mccMncString":Ljava/lang/String;
    const/4 v2, -0x1

    .line 135
    .local v2, "mccMnc":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "mccMncString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 138
    .local v1, "isSimSlotOperator":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    iget-object v5, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-lez v5, :cond_2

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-ge v0, v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "operatorMccMnc":I
    if-ne v4, v2, :cond_1

    .line 144
    const/4 v1, 0x1

    .line 148
    .end local v4    # "operatorMccMnc":I
    :cond_0
    return v1

    .line 141
    .restart local v4    # "operatorMccMnc":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    .end local v4    # "operatorMccMnc":I
    :cond_2
    return v1
.end method

.method public isSimTypeOperatorForMccMnc(I)Z
    .locals 4
    .param p1, "currentMccMnc"    # I

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "isSimSlotOperator":Z
    iget-object v3, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-lez v3, :cond_2

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-ge v0, v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, "operatorMccMnc":I
    if-ne v2, p1, :cond_1

    .line 160
    const/4 v1, 0x1

    .line 164
    .end local v2    # "operatorMccMnc":I
    :cond_0
    return v1

    .line 157
    .restart local v2    # "operatorMccMnc":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    .end local v2    # "operatorMccMnc":I
    :cond_2
    return v1
.end method

.class public Lcom/android/internal/telephony/MT6580;
.super Lcom/android/internal/telephony/RIL;
.source "MT6580.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final REFRESH_SESSION_RESET:I = 0x6

.field private static final RIL_REQUEST_EMERGENCY_DIAL:I = 0x827

.field private static final RIL_REQUEST_MODEM_POWEROFF:I = 0x7da

.field private static final RIL_REQUEST_MODEM_POWERON:I = 0x7ec

.field private static final RIL_REQUEST_RESUME_REGISTRATION:I = 0x811

.field private static final RIL_REQUEST_SET_CALL_INDICATION:I = 0x826

.field private static final RIL_REQUEST_SET_ECC_LIST:I = 0x829

.field private static final RIL_REQUEST_SET_ECC_SERVICE_CATEGORY:I = 0x828

.field private static final RIL_UNSOL_CALL_INFO_INDICATION:I = 0xbe9

.field private static final RIL_UNSOL_INCOMING_CALL_INDICATION:I = 0xbe2

.field private static final RIL_UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED:I = 0xbc7

.field private static final RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED:I = 0xbd0

.field private static final RIL_UNSOL_SET_ATTACH_APN:I = 0xc01


# instance fields
.field private dataCallCids:[I

.field private mEccList:Lcom/android/internal/telephony/MtkEccList;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 61
    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    .line 71
    const-string/jumbo v0, "MT6580"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ctor1: context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/MtkEccList;

    invoke-direct {v0}, Lcom/android/internal/telephony/MtkEccList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 61
    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    .line 80
    const-string/jumbo v0, "MT6580"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ctor2: context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/MtkEccList;

    invoke-direct {v0}, Lcom/android/internal/telephony/MtkEccList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    .line 77
    return-void
.end method

.method private fetchCidFromDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 495
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 497
    .local v1, "ret":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    if-ltz v2, :cond_0

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    aget v2, v2, v0

    if-gez v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    aput v3, v2, v0

    .line 505
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 498
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fixupPSBearerDataRegistration(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x3

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 484
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 485
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 487
    const-string/jumbo v1, "15"

    aput-object v1, v0, v3

    .line 490
    :cond_0
    return-object v0
.end method

.method private static localRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 88
    sparse-switch p0, :sswitch_data_0

    .line 96
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 89
    :sswitch_0
    const-string/jumbo v0, "RIL_REQUEST_RESUME_REGISTRATION"

    return-object v0

    .line 90
    :sswitch_1
    const-string/jumbo v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 91
    :sswitch_2
    const-string/jumbo v0, "RIL_REQUEST_EMERGENCY_DIAL"

    return-object v0

    .line 92
    :sswitch_3
    const-string/jumbo v0, "RIL_REQUEST_SET_ECC_SERVICE_CATEGORY"

    return-object v0

    .line 93
    :sswitch_4
    const-string/jumbo v0, "RIL_REQUEST_SET_ECC_LIST"

    return-object v0

    .line 94
    :sswitch_5
    const-string/jumbo v0, "RIL_REQUEST_MODEM_POWEROFF"

    return-object v0

    .line 95
    :sswitch_6
    const-string/jumbo v0, "RIL_REQUEST_MODEM_POWERON"

    return-object v0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x7da -> :sswitch_5
        0x7ec -> :sswitch_6
        0x811 -> :sswitch_0
        0x826 -> :sswitch_1
        0x827 -> :sswitch_2
        0x828 -> :sswitch_3
        0x829 -> :sswitch_4
    .end sparse-switch
.end method

.method private refreshEmergencyList()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {}, Lcom/android/internal/telephony/MtkEccList;->updateEmergencyNumbersProperty()V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 322
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 315
    return-void

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {p1}, Lcom/android/internal/telephony/MtkEccList;->isEmergencyNumberExt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {p1}, Lcom/android/internal/telephony/MtkEccList;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "serviceCategory":I
    const/16 v2, 0x828

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 333
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    const-string/jumbo v3, " "

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 342
    const/16 v2, 0x827

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 343
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    if-nez p3, :cond_0

    .line 348
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 327
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v1    # "serviceCategory":I
    :goto_1
    return-void

    .line 350
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v1    # "serviceCategory":I
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 360
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v1    # "serviceCategory":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 512
    const/16 v0, 0xc0

    if-ne p1, v0, :cond_0

    if-nez p6, :cond_0

    .line 513
    const-string/jumbo v0, "MT6580"

    const-string/jumbo v1, "Override the size for the COMMAND_GET_RESPONSE 0 => 15"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/16 p6, 0xf

    .line 516
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 511
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 402
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 403
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    .local v1, "error":I
    const/4 v3, 0x0

    .line 408
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v8, p0, Lcom/android/internal/telephony/MT6580;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v8

    .line 409
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/MT6580;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/RILRequest;

    .line 410
    .local v6, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v7, v4, :cond_1

    .line 411
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-lez v7, :cond_1

    .line 412
    :cond_0
    :try_start_1
    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v7, :sswitch_data_0

    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    monitor-exit v8

    .line 435
    if-nez v3, :cond_3

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 440
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    return-object v7

    .line 419
    .restart local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_0
    move-object v3, v6

    .line 420
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 422
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/MT6580;->refreshEmergencyList()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v5

    .line 425
    .local v5, "thr":Ljava/lang/Throwable;
    :try_start_3
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 426
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v9, 0x0

    invoke-static {v7, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 427
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v8

    .line 429
    return-object v6

    .line 408
    .end local v5    # "thr":Ljava/lang/Throwable;
    .end local v6    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 444
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v6    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MT6580;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 446
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_4

    .line 447
    return-object v3

    .line 450
    :cond_4
    const/4 v2, 0x0

    .line 452
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_6

    .line 453
    :cond_5
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_1

    .line 460
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Shouldn\'t be here: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 454
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 465
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_6
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    const-string/jumbo v8, " "

    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MT6580;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 468
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_7

    .line 469
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 470
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 473
    :cond_7
    return-object v3

    .line 455
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 456
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MT6580;->fixupPSBearerDataRegistration(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 457
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MT6580;->fetchCidFromDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 458
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/internal/telephony/MT6580;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v9, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x15 -> :sswitch_0
        0x1b -> :sswitch_0
        0x7b -> :sswitch_0
        0x827 -> :sswitch_0
        0x828 -> :sswitch_0
    .end sparse-switch

    .line 453
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_4
        0x1b -> :sswitch_5
        0x7b -> :sswitch_6
        0x827 -> :sswitch_2
        0x828 -> :sswitch_3
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 106
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "response":I
    sparse-switch v2, :sswitch_data_0

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;I)V

    .line 120
    return-void

    .line 109
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseRegSuspended(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 122
    .local v3, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v2, :sswitch_data_1

    .line 103
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 110
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseIncomingCallIndication(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 111
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseCallProgress(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 112
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseSetAttachApn(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 113
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 114
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 124
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 125
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 128
    :sswitch_7
    if-nez v3, :cond_0

    .line 129
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 130
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 129
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    :sswitch_8
    move-object v1, v3

    .line 134
    check-cast v1, [Ljava/lang/String;

    .line 136
    .local v1, "resp":[Ljava/lang/String;
    array-length v4, v1

    if-ge v4, v5, :cond_1

    .line 137
    new-array v1, v5, [Ljava/lang/String;

    .line 138
    check-cast v3, [Ljava/lang/String;

    .end local v3    # "ret":Ljava/lang/Object;
    aget-object v4, v3, v7

    aput-object v4, v1, v7

    .line 139
    const/4 v4, 0x1

    aput-object v6, v1, v4

    .line 141
    :cond_1
    aget-object v4, v1, v7

    if-eqz v4, :cond_2

    .line 142
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 143
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_2

    .line 145
    const-string/jumbo v4, "0"

    aput-object v4, v1, v7

    .line 148
    :cond_2
    aget-object v4, v1, v7

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/MT6580;->unsljLogMore(ILjava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mUSSDRegistrant:Landroid/os/Registrant;

    .line 151
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 155
    .end local v1    # "resp":[Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/Object;
    :sswitch_9
    check-cast v3, [I

    .end local v3    # "ret":Ljava/lang/Object;
    aget v4, v3, v7

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 156
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 157
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 156
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_4
        0xbc7 -> :sswitch_5
        0xbd0 -> :sswitch_0
        0xbe2 -> :sswitch_1
        0xbe9 -> :sswitch_2
        0xc01 -> :sswitch_3
    .end sparse-switch

    .line 122
    :sswitch_data_1
    .sparse-switch
        0x3ee -> :sswitch_8
        0xbc7 -> :sswitch_9
        0xbe2 -> :sswitch_6
        0xbe9 -> :sswitch_7
    .end sparse-switch
.end method

.method protected responseCallProgress(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 216
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "129"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 220
    :cond_0
    return-object v0
.end method

.method protected responseIncomingCallIndication(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x3

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "response":[Ljava/lang/String;
    const/16 v2, 0x826

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 198
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 200
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 206
    return-object v0
.end method

.method protected responseRegSuspended(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 173
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/16 v4, 0x811

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 179
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    const-string/jumbo v5, " sessionId "

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    aget v5, v2, v6

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 182
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 187
    return-object v2
.end method

.method protected responseSetAttachApn(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 253
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MT6580;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 254
    return-object v6
.end method

.method protected responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x2

    .line 260
    new-instance v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 262
    .local v1, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "rawefId":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 266
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-le v2, v4, :cond_0

    .line 267
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 268
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 274
    :cond_0
    :goto_1
    return-object v1

    .line 264
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 270
    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    goto :goto_1
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 226
    const/16 v2, 0x6f

    invoke-static {v2, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 228
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/MT6580;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "operatorNumber":Ljava/lang/String;
    const-string/jumbo v2, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 231
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string/jumbo v3, ", apn:"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string/jumbo v3, ", protocol:"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string/jumbo v3, ", authType:"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string/jumbo v3, ", username:"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string/jumbo v3, ", password:"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string/jumbo v3, ", operator:"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 225
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/MT6580;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 372
    const-string/jumbo v4, "airplane_mode_on"

    const/4 v5, 0x0

    .line 371
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 372
    const/4 v4, 0x1

    .line 371
    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 373
    .local v0, "isInApm":Z
    :goto_0
    const-string/jumbo v3, "persist.radio.airplane.mode.on"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 375
    .local v2, "wasInApm":Z
    const-string/jumbo v4, "persist.radio.airplane.mode.on"

    if-eqz v0, :cond_2

    const-string/jumbo v3, "true"

    :goto_1
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 384
    :cond_0
    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 385
    const-string/jumbo v3, "gsm.ril.eboot"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v3, 0x7da

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 388
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 370
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_2
    return-void

    .line 371
    .end local v0    # "isInApm":Z
    .end local v2    # "wasInApm":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isInApm":Z
    goto :goto_0

    .line 375
    .restart local v2    # "wasInApm":Z
    :cond_2
    const-string/jumbo v3, "false"

    goto :goto_1

    .line 378
    :cond_3
    const-string/jumbo v3, "gsm.ril.eboot"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v3, 0x7ec

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 381
    .restart local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_2

    .line 392
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_2
.end method

.method public setupDataCall(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "radioTechnology"    # I
    .param p2, "profile"    # I
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "interfaceId":I
    const/16 v3, 0x1b

    invoke-static {v3, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 286
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    add-int/lit8 v4, p1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    aget v3, v3, v0

    if-gez v3, :cond_1

    .line 299
    add-int/lit8 v1, v0, 0x1

    .line 303
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 307
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 308
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 308
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 308
    const-string/jumbo v4, " "

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 281
    return-void

    .line 297
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x16

.field static final TRANSACTION_disable:I = 0x7

.field static final TRANSACTION_disableNdefPush:I = 0xa

.field static final TRANSACTION_dispatch:I = 0x13

.field static final TRANSACTION_enable:I = 0x8

.field static final TRANSACTION_enableNdefPush:I = 0x9

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterVendorInterface:I = 0x5

.field static final TRANSACTION_getNfcCardEmulationInterface_1:I = 0x2

.field static final TRANSACTION_getNfcFCardEmulationInterface_2:I = 0x3

.field static final TRANSACTION_getNfcTagInterface_0:I = 0x1

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_ignore:I = 0x12

.field static final TRANSACTION_invokeBeam:I = 0x10

.field static final TRANSACTION_invokeBeamInternal:I = 0x11

.field static final TRANSACTION_isNdefPushEnabled:I = 0xb

.field static final TRANSACTION_pausePolling:I = 0xc

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x17

.field static final TRANSACTION_resumePolling:I = 0xd

.field static final TRANSACTION_setAppCallback:I = 0xf

.field static final TRANSACTION_setForegroundDispatch:I = 0xe

.field static final TRANSACTION_setP2pModes:I = 0x15

.field static final TRANSACTION_setReaderMode:I = 0x14

.field static final TRANSACTION_verifyNfcPermission:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 296
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v26

    return v26

    .line 45
    :sswitch_0
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v26, 0x1

    return v26

    .line 50
    :sswitch_1
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v23

    .line 52
    .local v23, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v26

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    const/16 v26, 0x1

    return v26

    .line 53
    :cond_0
    const/16 v26, 0x0

    goto :goto_0

    .line 58
    .end local v23    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v21

    .line 60
    .local v21, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v26

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    const/16 v26, 0x1

    return v26

    .line 61
    :cond_1
    const/16 v26, 0x0

    goto :goto_1

    .line 66
    .end local v21    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v22

    .line 68
    .local v22, "_result":Landroid/nfc/INfcFCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/nfc/INfcFCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v26

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 70
    const/16 v26, 0x1

    return v26

    .line 69
    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    .line 74
    .end local v22    # "_result":Landroid/nfc/INfcFCardEmulation;
    :sswitch_4
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v20

    .line 78
    .local v20, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v26

    :goto_3
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    const/16 v26, 0x1

    return v26

    .line 79
    :cond_3
    const/16 v26, 0x0

    goto :goto_3

    .line 84
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_5
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 87
    .restart local v9    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    .line 88
    .local v24, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 90
    const/16 v26, 0x1

    return v26

    .line 94
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v19

    .line 96
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/16 v26, 0x1

    return v26

    .line 102
    .end local v19    # "_result":I
    :sswitch_7
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_4

    const/4 v10, 0x1

    .line 105
    .local v10, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v25

    .line 106
    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v25, :cond_5

    const/16 v26, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/16 v26, 0x1

    return v26

    .line 104
    .end local v10    # "_arg0":Z
    .end local v25    # "_result":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 107
    .restart local v10    # "_arg0":Z
    .restart local v25    # "_result":Z
    :cond_5
    const/16 v26, 0x0

    goto :goto_5

    .line 112
    .end local v10    # "_arg0":Z
    .end local v25    # "_result":Z
    :sswitch_8
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v25

    .line 114
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v25, :cond_6

    const/16 v26, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/16 v26, 0x1

    return v26

    .line 115
    :cond_6
    const/16 v26, 0x0

    goto :goto_6

    .line 120
    .end local v25    # "_result":Z
    :sswitch_9
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v25

    .line 122
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v25, :cond_7

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/16 v26, 0x1

    return v26

    .line 123
    :cond_7
    const/16 v26, 0x0

    goto :goto_7

    .line 128
    .end local v25    # "_result":Z
    :sswitch_a
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v25

    .line 130
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v25, :cond_8

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/16 v26, 0x1

    return v26

    .line 131
    :cond_8
    const/16 v26, 0x0

    goto :goto_8

    .line 136
    .end local v25    # "_result":Z
    :sswitch_b
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v25

    .line 138
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v25, :cond_9

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/16 v26, 0x1

    return v26

    .line 139
    :cond_9
    const/16 v26, 0x0

    goto :goto_9

    .line 144
    .end local v25    # "_result":Z
    :sswitch_c
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/16 v26, 0x1

    return v26

    .line 153
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/16 v26, 0x1

    return v26

    .line 160
    :sswitch_e
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_a

    .line 163
    sget-object v26, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 169
    :goto_a
    sget-object v26, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/IntentFilter;

    .line 171
    .local v14, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_b

    .line 172
    sget-object v26, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/nfc/TechListParcel;

    .line 177
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v14, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/16 v26, 0x1

    return v26

    .line 166
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_a
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_a

    .line 175
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_b
    const/16 v17, 0x0

    .local v17, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_b

    .line 183
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    .end local v17    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_f
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v5

    .line 186
    .local v5, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v26, 0x1

    return v26

    .line 192
    .end local v5    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_10
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 194
    const/16 v26, 0x1

    return v26

    .line 198
    :sswitch_11
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_c

    .line 201
    sget-object v26, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/BeamShareData;

    .line 206
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 207
    const/16 v26, 0x1

    return v26

    .line 204
    :cond_c
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_c

    .line 211
    .end local v4    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_12
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 217
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v16

    .line 218
    .local v16, "_arg2":Landroid/nfc/ITagRemovedCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v11, v1}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v25

    .line 219
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v25, :cond_d

    const/16 v26, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/16 v26, 0x1

    return v26

    .line 220
    :cond_d
    const/16 v26, 0x0

    goto :goto_d

    .line 225
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v16    # "_arg2":Landroid/nfc/ITagRemovedCallback;
    .end local v25    # "_result":Z
    :sswitch_13
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_e

    .line 228
    sget-object v26, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/Tag;

    .line 233
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/16 v26, 0x1

    return v26

    .line 231
    :cond_e
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/nfc/Tag;
    goto :goto_e

    .line 239
    .end local v7    # "_arg0":Landroid/nfc/Tag;
    :sswitch_14
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 243
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v12

    .line 245
    .local v12, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 247
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_f

    .line 248
    sget-object v26, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    .line 253
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v12, v15, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/16 v26, 0x1

    return v26

    .line 251
    :cond_f
    const/16 v18, 0x0

    .local v18, "_arg3":Landroid/os/Bundle;
    goto :goto_f

    .line 259
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v15    # "_arg2":I
    .end local v18    # "_arg3":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 264
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/16 v26, 0x1

    return v26

    .line 270
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_16
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    .line 274
    .local v6, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 275
    .local v13, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/16 v26, 0x1

    return v26

    .line 281
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v13    # "_arg1":[I
    :sswitch_17
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    .line 284
    .restart local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/16 v26, 0x1

    return v26

    .line 290
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_18
    const-string/jumbo v26, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/16 v26, 0x1

    return v26

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

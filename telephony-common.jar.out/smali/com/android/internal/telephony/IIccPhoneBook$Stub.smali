.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnRecordsCapacityForSubscriber_10:I = 0xb

.field static final TRANSACTION_getAdnRecordsCapacity_9:I = 0xa

.field static final TRANSACTION_getAdnRecordsInEfForSubscriber_1:I = 0x2

.field static final TRANSACTION_getAdnRecordsInEf_0:I = 0x1

.field static final TRANSACTION_getAdnRecordsSizeForSubscriber_8:I = 0x9

.field static final TRANSACTION_getAdnRecordsSize_7:I = 0x8

.field static final TRANSACTION_updateAdnRecordsInEfByIndexForSubscriber_6:I = 0x7

.field static final TRANSACTION_updateAdnRecordsInEfByIndex_5:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearchForSubscriber_3:I = 0x4

.field static final TRANSACTION_updateAdnRecordsInEfBySearch_2:I = 0x3

.field static final TRANSACTION_updateAdnRecordsWithContentValuesInEfBySearchUsingSubId_4:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string/jumbo v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    return-object v1

    .line 39
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 43
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 222
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 55
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    return v2

    .line 60
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v24

    .line 64
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v2, 0x1

    return v2

    .line 70
    .end local v3    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 75
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v24

    .line 76
    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    const/4 v2, 0x1

    return v2

    .line 82
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 95
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 96
    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v25, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v2, 0x1

    return v2

    .line 97
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 102
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v25    # "_result":Z
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 108
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 114
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg6":Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v3

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 117
    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 118
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v25, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    return v2

    .line 119
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 124
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v16    # "_arg6":Ljava/lang/String;
    .end local v25    # "_result":Z
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 130
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    .line 137
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 138
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v11, v1, v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsWithContentValuesInEfBySearchUsingSubId(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v25

    .line 139
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v25, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v2, 0x1

    return v2

    .line 134
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v25    # "_result":Z
    :cond_2
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/content/ContentValues;
    goto :goto_2

    .line 140
    .end local v23    # "_arg2":Landroid/content/ContentValues;
    .restart local v6    # "_arg3":Ljava/lang/String;
    .restart local v25    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 145
    .end local v3    # "_arg0":I
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v25    # "_result":Z
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 155
    .local v21, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v7

    .line 156
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v25

    .line 157
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v25, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v2, 0x1

    return v2

    .line 158
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 163
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg3":I
    .end local v25    # "_result":Z
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 169
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 171
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 173
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 175
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg5":Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v3

    move-object v12, v5

    move-object v13, v6

    move-object v15, v8

    .line 176
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v25

    .line 177
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v25, :cond_5

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v2, 0x1

    return v2

    .line 178
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 183
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v14    # "_arg4":I
    .end local v25    # "_result":Z
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v26

    .line 187
    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 189
    const/4 v2, 0x1

    return v2

    .line 193
    .end local v3    # "_arg0":I
    .end local v26    # "_result":[I
    :sswitch_9
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 198
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object v26

    .line 199
    .restart local v26    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 201
    const/4 v2, 0x1

    return v2

    .line 205
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v26    # "_result":[I
    :sswitch_a
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsCapacity()[I

    move-result-object v26

    .line 207
    .restart local v26    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 209
    const/4 v2, 0x1

    return v2

    .line 213
    .end local v26    # "_result":[I
    :sswitch_b
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v26

    .line 217
    .restart local v26    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 219
    const/4 v2, 0x1

    return v2

    .line 51
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 3061
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p0, :cond_0

    .line 72
    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 76
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 77
    return-object v0

    .line 80
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 102
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 101
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    .line 112
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 97
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private readIntArray(Landroid/os/Parcel;)[I
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;

    .prologue
    .line 3048
    const/4 v0, 0x0

    .line 3049
    .local v0, "smallest":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3050
    .local v1, "smallestSize":I
    if-lez v1, :cond_0

    .line 3051
    new-array v0, v1, [I

    .line 3052
    .local v0, "smallest":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3054
    .end local v0    # "smallest":[I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 3058
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 374
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
    .line 149
    move/from16 v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3044
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 152
    :pswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 154
    .local v213, "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 155
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 157
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 159
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 161
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 162
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 164
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v6, p0

    .line 166
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 168
    .local v332, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v6, 0x1

    return v6

    .line 163
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v332    # "result":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    .line 165
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 175
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 177
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 178
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 180
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 181
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 182
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 185
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 187
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 189
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 190
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 192
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v6, 0x1

    return v6

    .line 186
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    .line 188
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_3

    .line 199
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 201
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 202
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 203
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 204
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 205
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 206
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 207
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 208
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 209
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 210
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 211
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 212
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 213
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 214
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 215
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v332, v0

    .line 218
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v6, 0x1

    return v6

    .line 210
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v332    # "result":I
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 212
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    .line 213
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    .line 225
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 227
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 228
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 229
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 230
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 232
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 233
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 234
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 235
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 236
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 237
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 238
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 239
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 240
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v333, v0

    .line 242
    .local v333, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v6, 0x0

    move-object/from16 v0, v333

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    const/4 v6, 0x1

    return v6

    .line 236
    .end local v17    # "userId":I
    .end local v333    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    .line 238
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    .line 249
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 251
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 252
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 253
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 254
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 255
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 256
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 258
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 259
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 260
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 261
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 262
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 263
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 265
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v6, 0x1

    return v6

    .line 261
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    .line 272
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 274
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 275
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentSender;

    .line 276
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 277
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 278
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 280
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 281
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 282
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 283
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 284
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 285
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 286
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 287
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 288
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 291
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v6, 0x1

    return v6

    .line 287
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v332    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_a

    .line 298
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 301
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 302
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 303
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 305
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 304
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 307
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 306
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 308
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 309
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 310
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 311
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 312
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 313
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 314
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 316
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v6, 0x1

    return v6

    .line 310
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    .line 312
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_c

    .line 323
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 325
    .local v93, "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 326
    .local v16, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v6, 0x1

    return v6

    .line 333
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 335
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v6, 0x1

    return v6

    .line 342
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->supportsLocalVoiceInteraction()Z

    move-result v0

    move/16 v334, v0

    .line 344
    .local v334, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    move/from16 v0, v334

    if-eqz v0, :cond_e

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v6, 0x1

    return v6

    .line 345
    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    .line 351
    .end local v334    # "result":Z
    :pswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 353
    .local v220, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 354
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 355
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 356
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v334, v0

    .line 357
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move/from16 v0, v334

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v6, 0x1

    return v6

    .line 355
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v334    # "result":Z
    :cond_f
    const/16 v16, 0x0

    goto :goto_e

    .line 358
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v334    # "result":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    .line 364
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v220    # "callingActivity":Landroid/os/IBinder;
    .end local v334    # "result":Z
    :pswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 367
    .local v69, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_11

    const/16 v16, 0x0

    .line 368
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 369
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v6, 0x1

    return v6

    .line 367
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v332    # "result":I
    :cond_11
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 375
    .end local v69    # "taskId":I
    :pswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 377
    .restart local v93    # "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    move-object/16 v336, v0

    .line 378
    .local v336, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 379
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 380
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v336, v0

    .end local v336    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v336

    check-cast v0, Landroid/content/Intent;

    move-object/16 v336, v0

    .line 382
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v237

    .line 383
    .local v237, "finishTask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v53

    move-object/from16 v3, v336

    move/from16 v4, v237

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    move/16 v328, v0

    .line 384
    .local v328, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move/from16 v0, v328

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v6, 0x1

    return v6

    .line 385
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 390
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v237    # "finishTask":I
    .end local v328    # "res":Z
    :pswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 392
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 393
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 394
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v6, 0x1

    return v6

    .line 400
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 402
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 403
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move/from16 v0, v328

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v6, 0x1

    return v6

    .line 404
    :cond_14
    const/4 v6, 0x0

    goto :goto_12

    .line 409
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 410
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 412
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v6, 0x1

    return v6

    .line 418
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 420
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 421
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move/from16 v0, v328

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v6, 0x1

    return v6

    .line 422
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 427
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 429
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v6, 0x1

    return v6

    .line 435
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 437
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 438
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    move/from16 v0, v328

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v6, 0x1

    return v6

    .line 439
    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    .line 445
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 448
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_17

    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 449
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 450
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 452
    if-eqz v213, :cond_18

    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 453
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 454
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 455
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 456
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 457
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v9, :cond_19

    .line 459
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 448
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    .line 452
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    .line 462
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 469
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 471
    .restart local v213    # "b":Landroid/os/IBinder;
    if-nez v213, :cond_1a

    .line 472
    const/4 v6, 0x1

    return v6

    .line 474
    :cond_1a
    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 475
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v6, 0x1

    return v6

    .line 482
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 485
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_1b

    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 486
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 487
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 488
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 490
    if-eqz v213, :cond_1c

    invoke-static/range {v213 .. v213}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v52

    .line 491
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 492
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 493
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 494
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 495
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 496
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 497
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 498
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 499
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 500
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v322, v0

    .line 503
    .local v322, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v6, 0x1

    return v6

    .line 485
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v322    # "res":I
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    .line 490
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    .line 497
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    .restart local v59    # "serialized":Z
    goto :goto_1a

    .line 498
    :cond_1e
    const/16 v60, 0x0

    .restart local v60    # "sticky":Z
    goto :goto_1b

    .line 510
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 512
    .restart local v213    # "b":Landroid/os/IBinder;
    if-eqz v213, :cond_1f

    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 513
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 514
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 515
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/4 v6, 0x1

    return v6

    .line 512
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    .line 521
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 523
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 524
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 525
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 526
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 527
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 528
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 529
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 531
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v6, 0x1

    return v6

    .line 526
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    .line 536
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :pswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 537
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 539
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 540
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 542
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v6, 0x1

    return v6

    .line 547
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 549
    .restart local v93    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 550
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 551
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 553
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v350, v0

    .line 554
    .local v350, "stopProfiling":Z
    :goto_1e
    if-eqz v93, :cond_24

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v39

    move/from16 v3, v350

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 557
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v6, 0x1

    return v6

    .line 553
    .end local v350    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v350, v0

    .restart local v350    # "stopProfiling":Z
    goto :goto_1e

    .line 562
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v350    # "stopProfiling":Z
    :pswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 564
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v6, 0x1

    return v6

    .line 570
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 572
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v6, 0x1

    return v6

    .line 578
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 580
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v284, v0

    .line 581
    .local v284, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/16 v307, v0

    .line 582
    .local v307, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v228

    check-cast v228, Ljava/lang/CharSequence;

    .line 583
    .local v228, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v284

    move-object/from16 v3, v307

    move-object/from16 v4, v228

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v6, 0x1

    return v6

    .line 589
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v228    # "description":Ljava/lang/CharSequence;
    .end local v284    # "map":Landroid/os/Bundle;
    .end local v307    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 591
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v6, 0x1

    return v6

    .line 597
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 599
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v6, 0x1

    return v6

    .line 605
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 607
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityRelaunched(Landroid/os/IBinder;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v6, 0x1

    return v6

    .line 613
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 615
    .restart local v93    # "token":Landroid/os/IBinder;
    if-eqz v93, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 616
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, p3

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    const/4 v6, 0x1

    return v6

    .line 615
    :cond_26
    const/4 v0, 0x0

    move-object/16 v327, v0

    .local v327, "res":Ljava/lang/String;
    goto :goto_1f

    .line 622
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Ljava/lang/String;
    :pswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 624
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v222

    .line 625
    .local v222, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 627
    const/4 v6, 0x1

    return v6

    .line 631
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 633
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/16 v280, v0

    .line 634
    .local v280, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, v280

    if-eqz v0, :cond_27

    invoke-interface/range {v280 .. v280}, Ljava/util/List;->size()I

    move-result v188

    .line 636
    .local v188, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/16 v250, 0x0

    .local v250, "i":I
    :goto_21
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_28

    .line 639
    move-object/from16 v0, v280

    move/from16 v1, v250

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v357, v0

    move-object/from16 v0, v357

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v357, v0

    .line 640
    .local v357, "task":Landroid/app/IAppTask;
    invoke-interface/range {v357 .. v357}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 638
    add-int/lit8 v250, v250, 0x1

    goto :goto_21

    .line 635
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v357    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v188, -0x1

    goto :goto_20

    .line 642
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_28
    const/4 v6, 0x1

    return v6

    .line 646
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v280    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 648
    .local v173, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 650
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v227

    check-cast v227, Landroid/app/ActivityManager$TaskDescription;

    .line 651
    .local v227, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v360, v0

    move-object/from16 v0, v360

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v360, v0

    .line 652
    .local v360, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v227

    move-object/from16 v3, v360

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v322, v0

    .line 653
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v6, 0x1

    return v6

    .line 659
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v227    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v322    # "res":I
    .end local v360    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v343, v0

    .line 661
    .local v343, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v6, 0x0

    move-object/from16 v0, v343

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 663
    const/4 v6, 0x1

    return v6

    .line 667
    .end local v343    # "size":Landroid/graphics/Point;
    :pswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 669
    .local v286, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 670
    .local v103, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v278, v0

    .line 671
    .local v278, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    move-object/from16 v0, v278

    if-eqz v0, :cond_29

    invoke-interface/range {v278 .. v278}, Ljava/util/List;->size()I

    move-result v188

    .line 673
    .restart local v188    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/16 v250, 0x0

    .restart local v250    # "i":I
    :goto_23
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_2a

    .line 676
    move-object/from16 v0, v278

    move/from16 v1, v250

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v259, v0

    move-object/from16 v0, v259

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/16 v259, v0

    .line 677
    .local v259, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v259

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 675
    add-int/lit8 v250, v250, 0x1

    goto :goto_23

    .line 672
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v259    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v188, -0x1

    goto :goto_22

    .line 679
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_2a
    const/4 v6, 0x1

    return v6

    .line 683
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v278    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 685
    .restart local v286    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 686
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 687
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v103

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v274, v0

    .line 689
    .local v274, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v6, 0x1

    move-object/from16 v0, v274

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 691
    const/4 v6, 0x1

    return v6

    .line 695
    .end local v17    # "userId":I
    .end local v103    # "fl":I
    .end local v274    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 697
    .local v94, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v358, v0

    .line 698
    .local v358, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object/from16 v0, v358

    if-eqz v0, :cond_2b

    .line 700
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v6, 0x1

    move-object/from16 v0, v358

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 705
    :goto_24
    const/4 v6, 0x1

    return v6

    .line 703
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 709
    .end local v94    # "id":I
    .end local v358    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 711
    .restart local v286    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 712
    .restart local v103    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v277, v0

    .line 713
    .local v277, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, v277

    if-eqz v0, :cond_2c

    invoke-interface/range {v277 .. v277}, Ljava/util/List;->size()I

    move-result v188

    .line 715
    .restart local v188    # "N":I
    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/16 v250, 0x0

    .restart local v250    # "i":I
    :goto_26
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_2d

    .line 718
    move-object/from16 v0, v277

    move/from16 v1, v250

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v258, v0

    move-object/from16 v0, v258

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/16 v258, v0

    .line 719
    .local v258, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v258

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 717
    add-int/lit8 v250, v250, 0x1

    goto :goto_26

    .line 714
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v258    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v188, -0x1

    goto :goto_25

    .line 721
    .restart local v188    # "N":I
    .restart local v250    # "i":I
    :cond_2d
    const/4 v6, 0x1

    return v6

    .line 725
    .end local v103    # "fl":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v277    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v286    # "maxNum":I
    :pswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    move-object/16 v275, v0

    .line 727
    .local v275, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    move-object/from16 v0, p3

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 729
    const/4 v6, 0x1

    return v6

    .line 733
    .end local v275    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move-object/16 v276, v0

    .line 735
    .local v276, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    move-object/from16 v0, p3

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 737
    const/4 v6, 0x1

    return v6

    .line 741
    .end local v276    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    move-object/16 v281, v0

    .line 743
    .local v281, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    move-object/from16 v1, v281

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 745
    const/4 v6, 0x1

    return v6

    .line 749
    .end local v281    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v356, v0

    .line 751
    .local v356, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 752
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 753
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 754
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v356

    move/from16 v2, v103

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v6, 0x1

    return v6

    .line 753
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2e
    const/16 v16, 0x0

    goto :goto_27

    .line 760
    .end local v103    # "fl":I
    .end local v356    # "task":I
    :pswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 762
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v0, 0x1

    move/16 v291, v0

    .line 763
    .local v291, "nonRoot":Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v291

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v328, v0

    .line 764
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    move/from16 v0, v328

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    const/4 v6, 0x1

    return v6

    .line 762
    .end local v291    # "nonRoot":Z
    .end local v328    # "res":Z
    :cond_2f
    const/4 v0, 0x0

    move/16 v291, v0

    goto :goto_28

    .line 765
    .restart local v291    # "nonRoot":Z
    .restart local v328    # "res":Z
    :cond_30
    const/4 v6, 0x0

    goto :goto_29

    .line 770
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v291    # "nonRoot":Z
    .end local v328    # "res":Z
    :pswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v356, v0

    .line 772
    .restart local v356    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v356

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v6, 0x1

    return v6

    .line 778
    .end local v356    # "task":I
    :pswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 780
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 781
    .local v76, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v71, 0x1

    .line 782
    .local v71, "toTop":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v76

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    const/4 v6, 0x1

    return v6

    .line 781
    .end local v71    # "toTop":Z
    :cond_31
    const/16 v71, 0x0

    goto :goto_2a

    .line 788
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    :pswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 790
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 791
    .local v70, "createMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/16 v71, 0x1

    .line 792
    .local v71, "toTop":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v72, 0x1

    .line 793
    .local v72, "animate":Z
    :goto_2c
    const/16 v73, 0x0

    .line 794
    .local v73, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v241, 0x1

    .line 795
    .local v241, "hasBounds":Z
    :goto_2d
    if-eqz v241, :cond_32

    .line 796
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 798
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v74, 0x1

    .local v74, "moveHomeStackFront":Z
    :goto_2e
    move-object/from16 v68, p0

    .line 799
    invoke-virtual/range {v68 .. v74}, Landroid/app/ActivityManagerNative;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0

    move/16 v328, v0

    .line 801
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    move/from16 v0, v328

    if-eqz v0, :cond_37

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v6, 0x1

    return v6

    .line 791
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v241    # "hasBounds":Z
    .end local v328    # "res":Z
    :cond_33
    const/16 v71, 0x0

    .restart local v71    # "toTop":Z
    goto :goto_2b

    .line 792
    :cond_34
    const/16 v72, 0x0

    .restart local v72    # "animate":Z
    goto :goto_2c

    .line 794
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    :cond_35
    const/16 v241, 0x0

    goto :goto_2d

    .line 798
    .end local v73    # "bounds":Landroid/graphics/Rect;
    .restart local v241    # "hasBounds":Z
    :cond_36
    const/16 v74, 0x0

    goto :goto_2e

    .line 802
    .restart local v74    # "moveHomeStackFront":Z
    .restart local v328    # "res":Z
    :cond_37
    const/4 v6, 0x0

    goto :goto_2f

    .line 807
    .end local v69    # "taskId":I
    .end local v70    # "createMode":I
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v241    # "hasBounds":Z
    .end local v328    # "res":Z
    :pswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 809
    .restart local v76    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/graphics/Rect;

    .line 810
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v0

    move/16 v328, v0

    .line 811
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    move/from16 v0, v328

    if-eqz v0, :cond_38

    const/4 v6, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v6, 0x1

    return v6

    .line 812
    :cond_38
    const/4 v6, 0x0

    goto :goto_30

    .line 817
    .end local v76    # "stackId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v328    # "res":Z
    :pswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 819
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    const/16 v242, 0x1

    .line 820
    .local v242, "hasRect":Z
    :goto_31
    const/16 v77, 0x0

    .line 821
    .local v77, "r":Landroid/graphics/Rect;
    if-eqz v242, :cond_39

    .line 822
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    .end local v77    # "r":Landroid/graphics/Rect;
    check-cast v77, Landroid/graphics/Rect;

    .line 824
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3b

    const/16 v78, 0x1

    .line 825
    .local v78, "allowResizeInDockedMode":Z
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3c

    const/16 v79, 0x1

    .line 826
    .local v79, "preserveWindows":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3d

    const/16 v72, 0x1

    .line 827
    .restart local v72    # "animate":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .local v81, "animationDuration":I
    move-object/from16 v75, p0

    move/from16 v80, v72

    .line 828
    invoke-virtual/range {v75 .. v81}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v6, 0x1

    return v6

    .line 819
    .end local v72    # "animate":Z
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v81    # "animationDuration":I
    .end local v242    # "hasRect":Z
    :cond_3a
    const/16 v242, 0x0

    goto :goto_31

    .line 824
    .restart local v242    # "hasRect":Z
    :cond_3b
    const/16 v78, 0x0

    .restart local v78    # "allowResizeInDockedMode":Z
    goto :goto_32

    .line 825
    :cond_3c
    const/16 v79, 0x0

    .restart local v79    # "preserveWindows":Z
    goto :goto_33

    .line 826
    :cond_3d
    const/16 v72, 0x0

    .restart local v72    # "animate":Z
    goto :goto_34

    .line 834
    .end local v72    # "animate":Z
    .end local v76    # "stackId":I
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v242    # "hasRect":Z
    :pswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v241, 0x1

    .line 836
    .restart local v241    # "hasBounds":Z
    :goto_35
    const/16 v73, 0x0

    .line 837
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v241, :cond_3e

    .line 838
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 840
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v247, 0x1

    .line 841
    .local v247, "hasTempPinnedTaskBounds":Z
    :goto_36
    const/4 v0, 0x0

    move-object/16 v359, v0

    .line 842
    .local v359, "tempPinnedTaskBounds":Landroid/graphics/Rect;
    if-eqz v247, :cond_3f

    .line 843
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v359, v0

    .end local v359    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v359

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v359, v0

    .line 845
    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v359

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 846
    const/4 v6, 0x1

    return v6

    .line 835
    .end local v241    # "hasBounds":Z
    .end local v247    # "hasTempPinnedTaskBounds":Z
    :cond_40
    const/16 v241, 0x0

    goto :goto_35

    .line 840
    .restart local v241    # "hasBounds":Z
    :cond_41
    const/16 v247, 0x0

    goto :goto_36

    .line 849
    .end local v241    # "hasBounds":Z
    :pswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->swapDockedAndFullscreenStack()V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v6, 0x1

    return v6

    .line 855
    :pswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v241, 0x1

    .line 857
    .restart local v241    # "hasBounds":Z
    :goto_37
    const/16 v73, 0x0

    .line 858
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v241, :cond_42

    .line 859
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 861
    :cond_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v243, 0x1

    .line 862
    .local v243, "hasTempDockedTaskBounds":Z
    :goto_38
    const/16 v84, 0x0

    .line 863
    .local v84, "tempDockedTaskBounds":Landroid/graphics/Rect;
    if-eqz v243, :cond_43

    .line 864
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    .end local v84    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    check-cast v84, Landroid/graphics/Rect;

    .line 866
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v244, 0x1

    .line 867
    .local v244, "hasTempDockedTaskInsetBounds":Z
    :goto_39
    const/16 v85, 0x0

    .line 868
    .local v85, "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v244, :cond_44

    .line 869
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v85, Landroid/graphics/Rect;

    .line 871
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v245, 0x1

    .line 872
    .local v245, "hasTempOtherTaskBounds":Z
    :goto_3a
    const/16 v86, 0x0

    .line 873
    .local v86, "tempOtherTaskBounds":Landroid/graphics/Rect;
    if-eqz v245, :cond_45

    .line 874
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    .end local v86    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    check-cast v86, Landroid/graphics/Rect;

    .line 876
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v246, 0x1

    .line 877
    .local v246, "hasTempOtherTaskInsetBounds":Z
    :goto_3b
    const/16 v87, 0x0

    .line 878
    .local v87, "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v246, :cond_46

    .line 879
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    .end local v87    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v87, Landroid/graphics/Rect;

    :cond_46
    move-object/from16 v82, p0

    move-object/from16 v83, v73

    .line 881
    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    const/4 v6, 0x1

    return v6

    .line 856
    .end local v241    # "hasBounds":Z
    .end local v243    # "hasTempDockedTaskBounds":Z
    .end local v244    # "hasTempDockedTaskInsetBounds":Z
    .end local v245    # "hasTempOtherTaskBounds":Z
    .end local v246    # "hasTempOtherTaskInsetBounds":Z
    :cond_47
    const/16 v241, 0x0

    goto :goto_37

    .line 861
    .restart local v241    # "hasBounds":Z
    :cond_48
    const/16 v243, 0x0

    goto :goto_38

    .line 866
    .restart local v243    # "hasTempDockedTaskBounds":Z
    :cond_49
    const/16 v244, 0x0

    goto :goto_39

    .line 871
    .restart local v244    # "hasTempDockedTaskInsetBounds":Z
    :cond_4a
    const/16 v245, 0x0

    goto :goto_3a

    .line 876
    .restart local v245    # "hasTempOtherTaskBounds":Z
    :cond_4b
    const/16 v246, 0x0

    goto :goto_3b

    .line 888
    .end local v241    # "hasBounds":Z
    .end local v243    # "hasTempDockedTaskBounds":Z
    .end local v244    # "hasTempDockedTaskInsetBounds":Z
    .end local v245    # "hasTempOtherTaskBounds":Z
    :pswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 890
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 891
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v313, v0

    .line 892
    .local v313, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v76

    move/from16 v3, v313

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->positionTaskInStack(III)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v6, 0x1

    return v6

    .line 898
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    .end local v313    # "position":I
    :pswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    move-object/16 v279, v0

    .line 900
    .local v279, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    move-object/from16 v0, p3

    move-object/from16 v1, v279

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 902
    const/4 v6, 0x1

    return v6

    .line 906
    .end local v279    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 908
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    move-object/16 v260, v0

    .line 909
    .local v260, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    move-object/from16 v0, v260

    if-eqz v0, :cond_4c

    .line 911
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v6, 0x0

    move-object/from16 v0, v260

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 916
    :goto_3c
    const/4 v6, 0x1

    return v6

    .line 914
    :cond_4c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .line 920
    .end local v76    # "stackId":I
    .end local v260    # "info":Landroid/app/ActivityManager$StackInfo;
    :pswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 922
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v0

    move/16 v267, v0

    .line 923
    .local v267, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    move/from16 v0, v267

    if-eqz v0, :cond_4d

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v6, 0x1

    return v6

    .line 924
    :cond_4d
    const/4 v6, 0x0

    goto :goto_3d

    .line 929
    .end local v69    # "taskId":I
    .end local v267    # "isInHomeStack":Z
    :pswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 931
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v6, 0x1

    return v6

    .line 937
    .end local v76    # "stackId":I
    :pswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v239

    .line 939
    .local v239, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    move-object/from16 v0, p3

    move/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v6, 0x1

    return v6

    .line 945
    .end local v239    # "focusedStackId":I
    :pswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 947
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedTask(I)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v6, 0x1

    return v6

    .line 953
    .end local v69    # "taskId":I
    :pswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 955
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-static/range {v93 .. v93}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v6, 0x1

    return v6

    .line 961
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 963
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    move/16 v298, v0

    .line 964
    .local v298, "onlyRoot":Z
    :goto_3e
    if-eqz v93, :cond_4f

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v298

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v322, v0

    .line 966
    .restart local v322    # "res":I
    :goto_3f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    const/4 v6, 0x1

    return v6

    .line 963
    .end local v298    # "onlyRoot":Z
    .end local v322    # "res":I
    :cond_4e
    const/4 v0, 0x0

    move/16 v298, v0

    .restart local v298    # "onlyRoot":Z
    goto :goto_3e

    .line 965
    :cond_4f
    const/4 v0, -0x1

    move/16 v322, v0

    .restart local v322    # "res":I
    goto :goto_3f

    .line 972
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v298    # "onlyRoot":Z
    .end local v322    # "res":I
    :pswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 974
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 975
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 976
    .local v127, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 977
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/4 v0, 0x1

    move/16 v348, v0

    .line 978
    .local v348, "stable":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move/from16 v2, v17

    move/from16 v3, v348

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v226

    .line 979
    .local v226, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    if-eqz v226, :cond_51

    .line 981
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v6, 0x0

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 986
    :goto_41
    const/4 v6, 0x1

    return v6

    .line 977
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v348    # "stable":Z
    :cond_50
    const/4 v0, 0x0

    move/16 v348, v0

    goto :goto_40

    .line 984
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v348    # "stable":Z
    :cond_51
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 990
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v127    # "name":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v348    # "stable":Z
    :pswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 992
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 993
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 994
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move/from16 v2, v17

    move-object/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v226

    .line 995
    .restart local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    if-eqz v226, :cond_52

    .line 997
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const/4 v6, 0x0

    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1002
    :goto_42
    const/4 v6, 0x1

    return v6

    .line 1000
    :cond_52
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 1006
    .end local v17    # "userId":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v127    # "name":Ljava/lang/String;
    .end local v226    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1008
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1010
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v316, v0

    .line 1011
    .local v316, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v316

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    const/4 v6, 0x1

    return v6

    .line 1017
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v316    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1019
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v347, v0

    .line 1020
    .local v347, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v364, v0

    .line 1021
    .local v364, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    move/from16 v2, v347

    move/from16 v3, v364

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v328, v0

    .line 1022
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    move/from16 v0, v328

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    const/4 v6, 0x1

    return v6

    .line 1023
    :cond_53
    const/4 v6, 0x0

    goto :goto_43

    .line 1028
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v328    # "res":Z
    .end local v347    # "stable":I
    .end local v364    # "unstable":I
    :pswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1030
    .restart local v213    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    const/4 v6, 0x1

    return v6

    .line 1036
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1038
    .restart local v213    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    const/4 v6, 0x1

    return v6

    .line 1044
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1046
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/4 v0, 0x1

    move/16 v348, v0

    .line 1047
    .restart local v348    # "stable":Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v213

    move/from16 v2, v348

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    const/4 v6, 0x1

    return v6

    .line 1046
    .end local v348    # "stable":Z
    :cond_54
    const/4 v0, 0x0

    move/16 v348, v0

    goto :goto_44

    .line 1053
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1055
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1056
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v6, 0x1

    return v6

    .line 1062
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v127    # "name":Ljava/lang/String;
    :pswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v223

    check-cast v223, Landroid/content/ComponentName;

    .line 1064
    .local v223, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v309, v0

    .line 1065
    .local v309, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    move-object/from16 v0, v309

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1067
    const/4 v6, 0x1

    return v6

    .line 1071
    .end local v223    # "comp":Landroid/content/ComponentName;
    .end local v309    # "pi":Landroid/app/PendingIntent;
    :pswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1073
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1074
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1075
    .local v90, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1076
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1077
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v88, p0

    move-object/from16 v89, v7

    move-object/from16 v91, v10

    move-object/from16 v92, v8

    move/from16 v93, v17

    .line 1078
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v222

    .line 1079
    .restart local v222    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1081
    const/4 v6, 0x1

    return v6

    .line 1085
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1087
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1088
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1089
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1090
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1091
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v322, v0

    .line 1092
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    const/4 v6, 0x1

    return v6

    .line 1098
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v92

    .line 1100
    .local v92, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1101
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v349, v0

    .line 1102
    .local v349, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    move-object/from16 v2, v93

    move/from16 v3, v349

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v328, v0

    .line 1103
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move/from16 v0, v328

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v6, 0x1

    return v6

    .line 1104
    :cond_55
    const/4 v6, 0x0

    goto :goto_45

    .line 1109
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    .end local v349    # "startId":I
    :pswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v92

    .line 1111
    .restart local v92    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1112
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1113
    .restart local v94    # "id":I
    const/16 v95, 0x0

    .line 1114
    .local v95, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    .line 1115
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v95

    .end local v95    # "notification":Landroid/app/Notification;
    check-cast v95, Landroid/app/Notification;

    .line 1117
    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .local v96, "sflags":I
    move-object/from16 v91, p0

    .line 1118
    invoke-virtual/range {v91 .. v96}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 1119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    const/4 v6, 0x1

    return v6

    .line 1124
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v94    # "id":I
    .end local v96    # "sflags":I
    :pswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1126
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1127
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1128
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1129
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1130
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1132
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1133
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1134
    .restart local v17    # "userId":I
    invoke-static/range {v213 .. v213}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v102

    .local v102, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v97, p0

    move-object/from16 v98, v7

    move-object/from16 v99, v93

    move-object/from16 v100, v90

    move-object/from16 v101, v10

    move-object/from16 v104, v8

    move/from16 v105, v17

    .line 1135
    invoke-virtual/range {v97 .. v105}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v322, v0

    .line 1137
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v6, 0x1

    return v6

    .line 1143
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v90    # "service":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v102    # "conn":Landroid/app/IServiceConnection;
    .end local v103    # "fl":I
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1145
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v102

    .line 1146
    .restart local v102    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v328, v0

    .line 1147
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    move/from16 v0, v328

    if-eqz v0, :cond_57

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    const/4 v6, 0x1

    return v6

    .line 1148
    :cond_57
    const/4 v6, 0x0

    goto :goto_46

    .line 1153
    .end local v102    # "conn":Landroid/app/IServiceConnection;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1155
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1156
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v340, v0

    .line 1157
    .local v340, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v340

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    const/4 v6, 0x1

    return v6

    .line 1163
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v340    # "service":Landroid/os/IBinder;
    :pswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1165
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1166
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v231, 0x1

    .line 1167
    .local v231, "doRebind":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v231

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    const/4 v6, 0x1

    return v6

    .line 1166
    .end local v231    # "doRebind":Z
    :cond_58
    const/16 v231, 0x0

    goto :goto_47

    .line 1173
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1175
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1176
    .local v114, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v349, v0

    .line 1177
    .restart local v349    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v322, v0

    .line 1178
    .restart local v322    # "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v114

    move/from16 v3, v349

    move/from16 v4, v322

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    const/4 v6, 0x1

    return v6

    .line 1184
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v114    # "type":I
    .end local v322    # "res":I
    .end local v349    # "startId":I
    :pswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v92

    .line 1186
    .restart local v92    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v106

    .line 1187
    .local v106, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1188
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v108

    .line 1189
    .local v108, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1190
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v109

    .line 1191
    .local v109, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1192
    invoke-static/range {v213 .. v213}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v110

    .line 1193
    .local v110, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1194
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .local v112, "abiOverride":Ljava/lang/String;
    move-object/from16 v104, p0

    move-object/from16 v105, v92

    move/from16 v107, v103

    move/from16 v111, v17

    .line 1195
    invoke-virtual/range {v104 .. v112}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v328, v0

    .line 1197
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    move/from16 v0, v328

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    const/4 v6, 0x1

    return v6

    .line 1198
    :cond_59
    const/4 v6, 0x0

    goto :goto_48

    .line 1204
    .end local v17    # "userId":I
    .end local v92    # "className":Landroid/content/ComponentName;
    .end local v103    # "fl":I
    .end local v106    # "profileFile":Ljava/lang/String;
    .end local v108    # "arguments":Landroid/os/Bundle;
    .end local v109    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v110    # "c":Landroid/app/IUiAutomationConnection;
    .end local v112    # "abiOverride":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1206
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1207
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1208
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v337, v0

    .line 1209
    .local v337, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v337

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    const/4 v6, 0x1

    return v6

    .line 1215
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v213    # "b":Landroid/os/IBinder;
    .end local v337    # "results":Landroid/os/Bundle;
    :pswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1217
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1219
    const/4 v6, 0x1

    return v6

    .line 1223
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1225
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    const/4 v6, 0x1

    return v6

    .line 1231
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1233
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 1234
    .restart local v188    # "N":I
    new-instance v0, Ljava/util/ArrayList;

    move-object/16 v301, v0

    invoke-direct/range {v301 .. v301}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v301, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v250, 0x0

    .restart local v250    # "i":I
    :goto_49
    move/from16 v0, v250

    move/from16 v1, v188

    if-ge v0, v1, :cond_5a

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v301

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    add-int/lit8 v250, v250, 0x1

    goto :goto_49

    .line 1238
    :cond_5a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v301

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateAssets(ILjava/util/List;)V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    const/4 v6, 0x1

    return v6

    .line 1244
    .end local v17    # "userId":I
    .end local v188    # "N":I
    .end local v250    # "i":I
    .end local v301    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1246
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v321, v0

    .line 1247
    .local v321, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v321

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v6, 0x1

    return v6

    .line 1253
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v321    # "requestedOrientation":I
    :pswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1255
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v320, v0

    .line 1256
    .local v320, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    move-object/from16 v0, p3

    move/from16 v1, v320

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    const/4 v6, 0x1

    return v6

    .line 1262
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v320    # "req":I
    :pswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1264
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v222

    .line 1265
    .restart local v222    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    move-object/from16 v0, v222

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1267
    const/4 v6, 0x1

    return v6

    .line 1271
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v222    # "cn":Landroid/content/ComponentName;
    :pswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1273
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1275
    const/4 v6, 0x1

    return v6

    .line 1279
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1281
    .restart local v114    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1282
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1283
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1284
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1287
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    .line 1288
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v119

    check-cast v119, [Landroid/content/Intent;

    .line 1289
    .local v119, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v120

    .line 1294
    .end local v119    # "requestIntents":[Landroid/content/Intent;
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1295
    .restart local v103    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 1296
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1297
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v113, p0

    move-object/from16 v115, v32

    move-object/from16 v116, v93

    move-object/from16 v117, v12

    move/from16 v118, v13

    move/from16 v121, v103

    move-object/from16 v122, v16

    move/from16 v123, v17

    .line 1298
    invoke-virtual/range {v113 .. v123}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v323, v0

    .line 1301
    .local v323, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    move-object/from16 v0, v323

    if-eqz v0, :cond_5d

    invoke-interface/range {v323 .. v323}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1303
    const/4 v6, 0x1

    return v6

    .line 1291
    .end local v17    # "userId":I
    .end local v103    # "fl":I
    .end local v323    # "res":Landroid/content/IIntentSender;
    :cond_5b
    const/16 v119, 0x0

    .line 1292
    .local v119, "requestIntents":[Landroid/content/Intent;
    const/16 v120, 0x0

    .local v120, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_4a

    .line 1296
    .end local v119    # "requestIntents":[Landroid/content/Intent;
    .end local v120    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v103    # "fl":I
    :cond_5c
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_4b

    .line 1302
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v323    # "res":Landroid/content/IIntentSender;
    :cond_5d
    const/4 v6, 0x0

    goto :goto_4c

    .line 1307
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v103    # "fl":I
    .end local v114    # "type":I
    .end local v323    # "res":Landroid/content/IIntentSender;
    :pswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1308
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 1310
    .local v318, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    const/4 v6, 0x1

    return v6

    .line 1316
    .end local v318    # "r":Landroid/content/IIntentSender;
    :pswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1317
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 1319
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 1320
    .local v327, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    move-object/from16 v0, p3

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1322
    const/4 v6, 0x1

    return v6

    .line 1326
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v327    # "res":Ljava/lang/String;
    :pswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1327
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 1329
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v322, v0

    .line 1330
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v6, 0x1

    return v6

    .line 1336
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v322    # "res":I
    :pswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1338
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1339
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1340
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5e

    const/16 v125, 0x1

    .line 1341
    .local v125, "allowAll":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    const/16 v126, 0x1

    .line 1342
    .local v126, "requireFull":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1343
    .restart local v127    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .local v128, "callerPackage":Ljava/lang/String;
    move-object/from16 v121, p0

    move/from16 v122, v42

    move/from16 v123, v43

    move/from16 v124, v17

    .line 1344
    invoke-virtual/range {v121 .. v128}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v322, v0

    .line 1346
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    const/4 v6, 0x1

    return v6

    .line 1340
    .end local v125    # "allowAll":Z
    .end local v126    # "requireFull":Z
    .end local v127    # "name":Ljava/lang/String;
    .end local v128    # "callerPackage":Ljava/lang/String;
    .end local v322    # "res":I
    :cond_5e
    const/16 v125, 0x0

    .restart local v125    # "allowAll":Z
    goto :goto_4d

    .line 1341
    :cond_5f
    const/16 v126, 0x0

    .restart local v126    # "requireFull":Z
    goto :goto_4e

    .line 1352
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v125    # "allowAll":Z
    .end local v126    # "requireFull":Z
    :pswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v285, v0

    .line 1354
    .local v285, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v285

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    const/4 v6, 0x1

    return v6

    .line 1360
    .end local v285    # "max":I
    :pswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v0

    move/16 v273, v0

    .line 1362
    .local v273, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    move-object/from16 v0, p3

    move/from16 v1, v273

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    const/4 v6, 0x1

    return v6

    .line 1368
    .end local v273    # "limit":I
    :pswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1370
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1371
    .local v131, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    const/4 v0, 0x1

    move/16 v266, v0

    .line 1372
    .local v266, "isForeground":Z
    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v131

    move/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v6, 0x1

    return v6

    .line 1371
    .end local v266    # "isForeground":Z
    :cond_60
    const/4 v0, 0x0

    move/16 v266, v0

    goto :goto_4f

    .line 1378
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v131    # "pid":I
    :pswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1380
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1381
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1382
    .local v132, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v131

    move/from16 v3, v132

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v322, v0

    .line 1383
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    const/4 v6, 0x1

    return v6

    .line 1389
    .end local v35    # "perm":Ljava/lang/String;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v322    # "res":I
    :pswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1391
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1392
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1393
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1394
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v131

    move/from16 v3, v132

    move-object/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v322, v0

    .line 1395
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    const/4 v6, 0x1

    return v6

    .line 1401
    .end local v35    # "perm":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v322    # "res":I
    :pswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1403
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1404
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1405
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1406
    .local v133, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1407
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v135

    .local v135, "callerToken":Landroid/os/IBinder;
    move-object/from16 v129, p0

    move/from16 v134, v17

    .line 1408
    invoke-virtual/range {v129 .. v135}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v322, v0

    .line 1409
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    const/4 v6, 0x1

    return v6

    .line 1415
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v131    # "pid":I
    .end local v132    # "uid":I
    .end local v133    # "mode":I
    .end local v135    # "callerToken":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1418
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1417
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v0

    move-object/16 v295, v0

    .line 1419
    .local v295, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1420
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v295

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v328, v0

    .line 1421
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    move/from16 v0, v328

    if-eqz v0, :cond_61

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    const/4 v6, 0x1

    return v6

    .line 1422
    :cond_61
    const/4 v6, 0x0

    goto :goto_50

    .line 1427
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v295    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v328    # "res":Z
    :pswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1429
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1430
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 1431
    .local v138, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1432
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1433
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v136, p0

    move-object/from16 v137, v7

    move-object/from16 v139, v130

    move/from16 v140, v133

    move/from16 v141, v17

    .line 1434
    invoke-virtual/range {v136 .. v141}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    const/4 v6, 0x1

    return v6

    .line 1440
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1442
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1443
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1444
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1445
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1446
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v133

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    const/4 v6, 0x1

    return v6

    .line 1452
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1454
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1455
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1456
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v133

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    const/4 v6, 0x1

    return v6

    .line 1462
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    :pswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1464
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 1465
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1466
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v133

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    const/4 v6, 0x1

    return v6

    .line 1472
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1474
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    const/4 v0, 0x1

    move/16 v256, v0

    .line 1475
    .local v256, "incoming":Z
    :goto_51
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v256

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v306, v0

    .line 1477
    .local v306, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    const/4 v6, 0x1

    move-object/from16 v0, v306

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1479
    const/4 v6, 0x1

    return v6

    .line 1474
    .end local v256    # "incoming":Z
    .end local v306    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_62
    const/4 v0, 0x0

    move/16 v256, v0

    goto :goto_51

    .line 1483
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1485
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1486
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v306, v0

    .line 1488
    .restart local v306    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    const/4 v6, 0x1

    move-object/from16 v0, v306

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1490
    const/4 v6, 0x1

    return v6

    .line 1494
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v306    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1496
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1497
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 1498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    const/4 v6, 0x1

    return v6

    .line 1503
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1505
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1506
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_63

    const/4 v0, 0x1

    move/16 v370, v0

    .line 1507
    .local v370, "waiting":Z
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, v370

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    const/4 v6, 0x1

    return v6

    .line 1506
    .end local v370    # "waiting":Z
    :cond_63
    const/4 v0, 0x0

    move/16 v370, v0

    goto :goto_52

    .line 1513
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    move-object/16 v288, v0

    invoke-direct/range {v288 .. v288}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1515
    .local v288, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v288

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    const/4 v6, 0x0

    move-object/from16 v0, v288

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1518
    const/4 v6, 0x1

    return v6

    .line 1522
    .end local v288    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    const/4 v6, 0x1

    return v6

    .line 1529
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v130

    .line 1531
    .restart local v130    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v308, v0

    .line 1532
    .local v308, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    move-object/from16 v0, v308

    if-eqz v0, :cond_64

    .line 1534
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    const/4 v6, 0x1

    move-object/from16 v0, v308

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1539
    :goto_53
    const/4 v6, 0x1

    return v6

    .line 1537
    :cond_64
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 1543
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v308    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    const/4 v0, 0x1

    move/16 v341, v0

    .line 1545
    .local v341, "showing":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/4 v0, 0x1

    move/16 v296, v0

    .line 1546
    .local v296, "occluded":Z
    :goto_55
    move-object/from16 v0, p0

    move/from16 v1, v341

    move/from16 v2, v296

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setLockScreenShown(ZZ)V

    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    const/4 v6, 0x1

    return v6

    .line 1544
    .end local v296    # "occluded":Z
    .end local v341    # "showing":Z
    :cond_65
    const/4 v0, 0x0

    move/16 v341, v0

    .restart local v341    # "showing":Z
    goto :goto_54

    .line 1545
    :cond_66
    const/4 v0, 0x0

    move/16 v296, v0

    goto :goto_55

    .line 1552
    .end local v341    # "showing":Z
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v312, v0

    .line 1554
    .local v312, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/4 v0, 0x1

    move/16 v372, v0

    .line 1555
    .local v372, "wfd":Z
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    const/4 v0, 0x1

    move/16 v304, v0

    .line 1556
    .local v304, "per":Z
    :goto_57
    move-object/from16 v0, p0

    move-object/from16 v1, v312

    move/from16 v2, v372

    move/from16 v3, v304

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    const/4 v6, 0x1

    return v6

    .line 1554
    .end local v304    # "per":Z
    .end local v372    # "wfd":Z
    :cond_67
    const/4 v0, 0x0

    move/16 v372, v0

    .restart local v372    # "wfd":Z
    goto :goto_56

    .line 1555
    :cond_68
    const/4 v0, 0x0

    move/16 v304, v0

    goto :goto_57

    .line 1562
    .end local v312    # "pn":Ljava/lang/String;
    .end local v372    # "wfd":Z
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    const/16 v233, 0x1

    .line 1564
    .local v233, "enabled":Z
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    const/4 v6, 0x1

    return v6

    .line 1563
    .end local v233    # "enabled":Z
    :cond_69
    const/16 v233, 0x0

    goto :goto_58

    .line 1570
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1571
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v371, v0

    .line 1573
    .local v371, "watcher":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v252, 0x1

    .line 1574
    .local v252, "imAMonkey":Z
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v371

    move/from16 v2, v252

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    const/4 v6, 0x1

    return v6

    .line 1573
    .end local v252    # "imAMonkey":Z
    :cond_6a
    const/16 v252, 0x0

    goto :goto_59

    .line 1580
    .end local v371    # "watcher":Landroid/app/IActivityController;
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    const/16 v233, 0x1

    .line 1582
    .restart local v233    # "enabled":Z
    :goto_5a
    move-object/from16 v0, p0

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenientBackgroundCheck(Z)V

    .line 1583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    const/4 v6, 0x1

    return v6

    .line 1581
    .end local v233    # "enabled":Z
    :cond_6b
    const/16 v233, 0x0

    goto :goto_5a

    .line 1588
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getMemoryTrimLevel()I

    move-result v0

    move/16 v272, v0

    .line 1590
    .local v272, "level":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    move-object/from16 v0, p3

    move/from16 v1, v272

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    const/4 v6, 0x1

    return v6

    .line 1596
    .end local v272    # "level":I
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    const/4 v6, 0x1

    return v6

    .line 1603
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1604
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1606
    .local v265, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v346, v0

    .line 1607
    .local v346, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v345, v0

    .line 1608
    .local v345, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1609
    .local v354, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v346

    move-object/from16 v3, v345

    move-object/from16 v4, v354

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    const/4 v6, 0x1

    return v6

    .line 1615
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v345    # "sourcePkg":Ljava/lang/String;
    .end local v346    # "sourceUid":I
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1616
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1618
    .restart local v265    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v346, v0

    .line 1619
    .restart local v346    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1620
    .restart local v354    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v346

    move-object/from16 v3, v354

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    const/4 v6, 0x1

    return v6

    .line 1626
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v346    # "sourceUid":I
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1627
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1629
    .restart local v265    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v346, v0

    .line 1630
    .restart local v346    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1631
    .restart local v354    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move/from16 v2, v346

    move-object/from16 v3, v354

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    const/4 v6, 0x1

    return v6

    .line 1637
    .end local v265    # "is":Landroid/content/IIntentSender;
    .end local v346    # "sourceUid":I
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v310, v0

    .line 1639
    .local v310, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1640
    .local v319, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/4 v0, 0x1

    move/16 v339, v0

    .line 1641
    .local v339, "secure":Z
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    move-object/from16 v2, v319

    move/from16 v3, v339

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v328, v0

    .line 1642
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    move/from16 v0, v328

    if-eqz v0, :cond_6d

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    const/4 v6, 0x1

    return v6

    .line 1640
    .end local v328    # "res":Z
    .end local v339    # "secure":Z
    :cond_6c
    const/4 v0, 0x0

    move/16 v339, v0

    goto :goto_5b

    .line 1643
    .restart local v328    # "res":Z
    .restart local v339    # "secure":Z
    :cond_6d
    const/4 v6, 0x0

    goto :goto_5c

    .line 1648
    .end local v310    # "pids":[I
    .end local v319    # "reason":Ljava/lang/String;
    .end local v328    # "res":Z
    .end local v339    # "secure":Z
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1650
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v319

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v328, v0

    .line 1651
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    move/from16 v0, v328

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    const/4 v6, 0x1

    return v6

    .line 1652
    :cond_6e
    const/4 v6, 0x0

    goto :goto_5d

    .line 1657
    .end local v319    # "reason":Ljava/lang/String;
    .end local v328    # "res":Z
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1659
    .local v209, "app":Landroid/os/IBinder;
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v221

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1660
    .local v221, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v221

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    const/4 v6, 0x1

    return v6

    .line 1666
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1668
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 1669
    .restart local v354    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    const/4 v0, 0x1

    move/16 v353, v0

    .line 1670
    .local v353, "system":Z
    :goto_5e
    new-instance v221, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v221

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1671
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move-object/from16 v2, v354

    move/from16 v3, v353

    move-object/from16 v4, v221

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v328, v0

    .line 1672
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    move/from16 v0, v328

    if-eqz v0, :cond_70

    const/4 v6, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    const/4 v6, 0x1

    return v6

    .line 1669
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v328    # "res":Z
    .end local v353    # "system":Z
    :cond_6f
    const/4 v0, 0x0

    move/16 v353, v0

    .restart local v353    # "system":Z
    goto :goto_5e

    .line 1673
    .restart local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v328    # "res":Z
    :cond_70
    const/4 v6, 0x0

    goto :goto_5f

    .line 1678
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v221    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v328    # "res":Z
    .end local v353    # "system":Z
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1680
    .restart local v209    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v369, v0

    .line 1681
    .local v369, "violationMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    move-object/16 v262, v0

    move-object/from16 v0, v262

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1682
    .local v262, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v209

    move/from16 v2, v369

    move-object/from16 v3, v262

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    const/4 v6, 0x1

    return v6

    .line 1688
    .end local v209    # "app":Landroid/os/IBinder;
    .end local v262    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v369    # "violationMask":I
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v342, v0

    .line 1690
    .local v342, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v342

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    const/4 v6, 0x1

    return v6

    .line 1696
    .end local v342    # "sig":I
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1698
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1699
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    const/4 v6, 0x1

    return v6

    .line 1705
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    const/4 v6, 0x1

    return v6

    .line 1712
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1714
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1715
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPackageDependents(Ljava/lang/String;I)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1717
    const/4 v6, 0x1

    return v6

    .line 1721
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1723
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1724
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    const/4 v6, 0x1

    return v6

    .line 1730
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/16 v257, v0

    invoke-direct/range {v257 .. v257}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1733
    .local v257, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    const/4 v6, 0x0

    move-object/from16 v0, v257

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1736
    const/4 v6, 0x1

    return v6

    .line 1740
    .end local v257    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v224

    .line 1742
    .local v224, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    const/4 v6, 0x0

    move-object/from16 v0, v224

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1744
    const/4 v6, 0x1

    return v6

    .line 1748
    .end local v224    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 1750
    .local v140, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1751
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    const/16 v142, 0x1

    .line 1752
    .local v142, "start":Z
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 1753
    .local v144, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    .line 1754
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_61
    move-object/from16 v139, p0

    move/from16 v141, v17

    move-object/from16 v143, v15

    .line 1755
    invoke-virtual/range {v139 .. v144}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v328, v0

    .line 1756
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    move/from16 v0, v328

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    const/4 v6, 0x1

    return v6

    .line 1751
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v328    # "res":Z
    :cond_71
    const/16 v142, 0x0

    .restart local v142    # "start":Z
    goto :goto_60

    .line 1754
    .restart local v144    # "profileType":I
    :cond_72
    const/4 v15, 0x0

    goto :goto_61

    .line 1757
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v328    # "res":Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_62

    .line 1762
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v142    # "start":Z
    .end local v144    # "profileType":I
    .end local v328    # "res":Z
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v328, v0

    .line 1764
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    move/from16 v0, v328

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    const/4 v6, 0x1

    return v6

    .line 1765
    :cond_74
    const/4 v6, 0x0

    goto :goto_63

    .line 1770
    .end local v328    # "res":Z
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    const/4 v6, 0x1

    return v6

    .line 1777
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    const/4 v6, 0x1

    return v6

    .line 1784
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/Intent;

    .line 1786
    .restart local v90    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1787
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1788
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v215

    .line 1789
    .local v215, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1790
    move-object/from16 v0, p3

    move-object/from16 v1, v215

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1791
    const/4 v6, 0x1

    return v6

    .line 1795
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v90    # "service":Landroid/content/Intent;
    .end local v215    # "binder":Landroid/os/IBinder;
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1797
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1798
    .local v214, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1799
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v214

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v351, v0

    .line 1800
    .local v351, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    move/from16 v0, v351

    if-eqz v0, :cond_75

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    const/4 v6, 0x1

    return v6

    .line 1801
    :cond_75
    const/4 v6, 0x0

    goto :goto_64

    .line 1806
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v214    # "backupRestoreMode":I
    .end local v351    # "success":Z
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1808
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v206

    .line 1809
    .local v206, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    const/4 v6, 0x1

    return v6

    .line 1815
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v206    # "agent":Landroid/os/IBinder;
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v261, v0

    move-object/from16 v0, v261

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object/16 v261, v0

    .line 1817
    .local v261, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v261

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    const/4 v6, 0x1

    return v6

    .line 1823
    .end local v261    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1825
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1827
    const/4 v6, 0x1

    return v6

    .line 1831
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 1833
    .local v311, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 1834
    .local v210, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1835
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1836
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    move/from16 v2, v210

    move/from16 v3, v17

    move-object/from16 v4, v319

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 1837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    const/4 v6, 0x1

    return v6

    .line 1842
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v311    # "pkg":Ljava/lang/String;
    .end local v319    # "reason":Ljava/lang/String;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 1844
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v319

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    const/4 v6, 0x1

    return v6

    .line 1850
    .end local v319    # "reason":Ljava/lang/String;
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v310, v0

    .line 1852
    .restart local v310    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v329, v0

    .line 1853
    .local v329, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v329

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1855
    const/4 v6, 0x1

    return v6

    .line 1859
    .end local v310    # "pids":[I
    .end local v329    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v315, v0

    .line 1861
    .local v315, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1862
    .restart local v132    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v315

    move/from16 v2, v132

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1864
    const/4 v6, 0x1

    return v6

    .line 1868
    .end local v132    # "uid":I
    .end local v315    # "processName":Ljava/lang/String;
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1870
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1871
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 1872
    .local v234, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v235

    .line 1873
    .local v235, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v32

    move/from16 v3, v234

    move/from16 v4, v235

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    const/4 v6, 0x1

    return v6

    .line 1879
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v234    # "enterAnim":I
    .end local v235    # "exitAnim":I
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v211

    .line 1881
    .local v211, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    if-eqz v211, :cond_76

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    const/4 v6, 0x1

    return v6

    .line 1882
    :cond_76
    const/4 v6, 0x0

    goto :goto_65

    .line 1887
    .end local v211    # "areThey":Z
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_77

    const/4 v0, 0x1

    move/16 v289, v0

    .line 1889
    .local v289, "monkey":Z
    :goto_66
    move-object/from16 v0, p0

    move/from16 v1, v289

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    const/4 v6, 0x1

    return v6

    .line 1888
    .end local v289    # "monkey":Z
    :cond_77
    const/4 v0, 0x0

    move/16 v289, v0

    goto :goto_66

    .line 1895
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    const/4 v6, 0x1

    return v6

    .line 1902
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1904
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v270, v0

    .line 1905
    .local v270, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1906
    move/from16 v0, v270

    if-eqz v0, :cond_78

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    const/4 v6, 0x1

    return v6

    .line 1906
    :cond_78
    const/4 v6, 0x0

    goto :goto_67

    .line 1911
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v270    # "isit":Z
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1913
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v269, v0

    .line 1914
    .local v269, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    move/from16 v0, v269

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    const/4 v6, 0x1

    return v6

    .line 1915
    :cond_79
    const/4 v6, 0x0

    goto :goto_68

    .line 1920
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v269    # "isTopOfTask":Z
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1922
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v225

    .line 1923
    .local v225, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    if-eqz v225, :cond_7a

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    const/4 v6, 0x1

    return v6

    .line 1924
    :cond_7a
    const/4 v6, 0x0

    goto :goto_69

    .line 1929
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1932
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_7b

    .line 1933
    const/16 v217, 0x0

    .line 1937
    :goto_6a
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v299, v0

    .line 1938
    .local v299, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v299

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v225

    .line 1939
    .restart local v225    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    if-eqz v225, :cond_7c

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    const/4 v6, 0x1

    return v6

    .line 1935
    .end local v225    # "converted":Z
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :cond_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v217

    .local v217, "bundle":Landroid/os/Bundle;
    goto :goto_6a

    .line 1940
    .end local v217    # "bundle":Landroid/os/Bundle;
    .restart local v225    # "converted":Z
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    :cond_7c
    const/4 v6, 0x0

    goto :goto_6b

    .line 1945
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v225    # "converted":Z
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1947
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v299, v0

    .line 1948
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    move-object/from16 v0, v299

    if-nez v0, :cond_7d

    const/4 v6, 0x0

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1950
    const/4 v6, 0x1

    return v6

    .line 1949
    :cond_7d
    invoke-virtual/range {v299 .. v299}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_6c

    .line 1954
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 1956
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_7e

    const/16 v253, 0x1

    .line 1957
    .local v253, "imm":Z
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v253

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    const/4 v6, 0x1

    return v6

    .line 1956
    .end local v253    # "imm":Z
    :cond_7e
    const/16 v253, 0x0

    goto :goto_6d

    .line 1963
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v0

    move/16 v270, v0

    .line 1965
    .restart local v270    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1966
    move/from16 v0, v270

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    const/4 v6, 0x1

    return v6

    .line 1966
    :cond_7f
    const/4 v6, 0x0

    goto :goto_6e

    .line 1971
    .end local v270    # "isit":Z
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1973
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v263, v0

    .line 1974
    .local v263, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1975
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v287, v0

    .line 1976
    .local v287, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v132

    move/from16 v2, v263

    move-object/from16 v3, v32

    move-object/from16 v4, v287

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1978
    const/4 v6, 0x1

    return v6

    .line 1982
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v132    # "uid":I
    .end local v263    # "initialPid":I
    .end local v287    # "message":Ljava/lang/String;
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1983
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 1984
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1985
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/16 v363, v0

    .line 1986
    .local v363, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1987
    move-object/from16 v0, p3

    move-object/from16 v1, v363

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1988
    const/4 v6, 0x1

    return v6

    .line 1992
    .end local v17    # "userId":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v363    # "type":Ljava/lang/String;
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1994
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v305, v0

    .line 1995
    .local v305, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    move-object/from16 v0, p3

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1997
    const/4 v6, 0x1

    return v6

    .line 2001
    .end local v127    # "name":Ljava/lang/String;
    .end local v305    # "perm":Landroid/os/IBinder;
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2003
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v305, v0

    .line 2004
    .restart local v305    # "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    move-object/from16 v0, p3

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2006
    const/4 v6, 0x1

    return v6

    .line 2010
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v305    # "perm":Landroid/os/IBinder;
    :pswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v146

    .line 2012
    .local v146, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 2013
    .local v147, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 2014
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 2015
    .restart local v130    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2016
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v151

    .line 2017
    .local v151, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v152

    .local v152, "targetUserId":I
    move-object/from16 v145, p0

    move-object/from16 v148, v138

    move-object/from16 v149, v130

    move/from16 v150, v133

    .line 2018
    invoke-virtual/range {v145 .. v152}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 2020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    const/4 v6, 0x1

    return v6

    .line 2025
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v133    # "mode":I
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v146    # "owner":Landroid/os/IBinder;
    .end local v147    # "fromUid":I
    .end local v151    # "sourceUserId":I
    .end local v152    # "targetUserId":I
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v146

    .line 2027
    .restart local v146    # "owner":Landroid/os/IBinder;
    const/16 v130, 0x0

    .line 2028
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_80

    .line 2029
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    .end local v130    # "uri":Landroid/net/Uri;
    check-cast v130, Landroid/net/Uri;

    .line 2031
    :cond_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2032
    .restart local v133    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2033
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v130

    move/from16 v3, v133

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 2034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    const/4 v6, 0x1

    return v6

    .line 2039
    .end local v17    # "userId":I
    .end local v133    # "mode":I
    .end local v146    # "owner":Landroid/os/IBinder;
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 2041
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 2042
    .restart local v138    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/net/Uri;

    .line 2043
    .local v130, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2044
    .local v157, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v153, p0

    move/from16 v154, v43

    move-object/from16 v155, v138

    move-object/from16 v156, v130

    move/from16 v158, v17

    .line 2045
    invoke-virtual/range {v153 .. v158}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v322, v0

    .line 2046
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2047
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    const/4 v6, 0x1

    return v6

    .line 2052
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v130    # "uri":Landroid/net/Uri;
    .end local v138    # "targetPkg":Ljava/lang/String;
    .end local v157    # "modeFlags":I
    .end local v322    # "res":I
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 2054
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2055
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    const/16 v161, 0x1

    .line 2056
    .local v161, "managed":Z
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2057
    .local v162, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    .line 2058
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v163, v6

    .local v163, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_70
    move-object/from16 v158, p0

    move-object/from16 v159, v140

    move/from16 v160, v17

    .line 2059
    invoke-virtual/range {v158 .. v163}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v328, v0

    .line 2060
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2061
    move/from16 v0, v328

    if-eqz v0, :cond_83

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    const/4 v6, 0x1

    return v6

    .line 2055
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :cond_81
    const/16 v161, 0x0

    .restart local v161    # "managed":Z
    goto :goto_6f

    .line 2058
    .restart local v162    # "path":Ljava/lang/String;
    :cond_82
    const/16 v163, 0x0

    goto :goto_70

    .line 2061
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v328    # "res":Z
    :cond_83
    const/4 v6, 0x0

    goto :goto_71

    .line 2067
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v161    # "managed":Z
    .end local v162    # "path":Ljava/lang/String;
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :pswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 2069
    .restart local v213    # "b":Landroid/os/IBinder;
    invoke-static/range {v213 .. v213}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 2070
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2071
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v167

    check-cast v167, [Landroid/content/Intent;

    .line 2072
    .local v167, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v168

    .line 2073
    .local v168, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2074
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_84

    .line 2075
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 2076
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v164, p0

    move-object/from16 v165, v7

    move-object/from16 v166, v8

    move-object/from16 v169, v11

    move-object/from16 v170, v16

    move/from16 v171, v17

    .line 2077
    invoke-virtual/range {v164 .. v171}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v332, v0

    .line 2079
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2080
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    const/4 v6, 0x1

    return v6

    .line 2075
    .end local v17    # "userId":I
    .end local v332    # "result":I
    :cond_84
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_72

    .line 2086
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v167    # "intents":[Landroid/content/Intent;
    .end local v168    # "resolvedTypes":[Ljava/lang/String;
    .end local v213    # "b":Landroid/os/IBinder;
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v133

    .line 2088
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    move-object/from16 v0, p3

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    const/4 v6, 0x1

    return v6

    .line 2095
    .end local v133    # "mode":I
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2097
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 2098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    move-object/from16 v0, p3

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    const/4 v6, 0x1

    return v6

    .line 2105
    .end local v133    # "mode":I
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2107
    .restart local v311    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v133

    .line 2108
    .restart local v133    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2109
    move-object/from16 v0, p3

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    const/4 v6, 0x1

    return v6

    .line 2115
    .end local v133    # "mode":I
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2117
    .restart local v311    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v133

    .line 2118
    .restart local v133    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    move/from16 v2, v133

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2120
    const/4 v6, 0x1

    return v6

    .line 2124
    .end local v133    # "mode":I
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2126
    .local v366, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v334, v0

    .line 2127
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2128
    move/from16 v0, v334

    if-eqz v0, :cond_85

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    const/4 v6, 0x1

    return v6

    .line 2128
    :cond_85
    const/4 v6, 0x0

    goto :goto_73

    .line 2133
    .end local v334    # "result":Z
    .end local v366    # "userid":I
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2135
    .restart local v366    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v334, v0

    .line 2136
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    move/from16 v0, v334

    if-eqz v0, :cond_86

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    const/4 v6, 0x1

    return v6

    .line 2137
    :cond_86
    const/4 v6, 0x0

    goto :goto_74

    .line 2142
    .end local v334    # "result":Z
    .end local v366    # "userid":I
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2144
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v362, v0

    .line 2145
    .local v362, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v338, v0

    .line 2147
    .local v338, "secret":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2146
    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v0

    move-object/16 v282, v0

    .line 2148
    .local v282, "listener":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v362

    move-object/from16 v3, v338

    move-object/from16 v4, v282

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    move/16 v334, v0

    .line 2149
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    move/from16 v0, v334

    if-eqz v0, :cond_87

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    const/4 v6, 0x1

    return v6

    .line 2150
    :cond_87
    const/4 v6, 0x0

    goto :goto_75

    .line 2155
    .end local v17    # "userId":I
    .end local v282    # "listener":Landroid/os/IProgressListener;
    .end local v334    # "result":Z
    .end local v338    # "secret":[B
    .end local v362    # "token":[B
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2157
    .restart local v366    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    const/16 v240, 0x1

    .line 2159
    .local v240, "force":Z
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2158
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v219

    .line 2160
    .local v219, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v366

    move/from16 v2, v240

    move-object/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v332, v0

    .line 2161
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2163
    const/4 v6, 0x1

    return v6

    .line 2157
    .end local v219    # "callback":Landroid/app/IStopUserCallback;
    .end local v240    # "force":Z
    .end local v332    # "result":I
    :cond_88
    const/16 v240, 0x0

    .restart local v240    # "force":Z
    goto :goto_76

    .line 2167
    .end local v240    # "force":Z
    .end local v366    # "userid":I
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2168
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v365, v0

    .line 2169
    .local v365, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    const/4 v6, 0x0

    move-object/from16 v0, v365

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2171
    const/4 v6, 0x1

    return v6

    .line 2175
    .end local v365    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 2177
    .restart local v366    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v203

    .line 2178
    .local v203, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    move/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(II)Z

    move-result v0

    move/16 v334, v0

    .line 2179
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    move/from16 v0, v334

    if-eqz v0, :cond_89

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    const/4 v6, 0x1

    return v6

    .line 2180
    :cond_89
    const/4 v6, 0x0

    goto :goto_77

    .line 2185
    .end local v203    # "_flags":I
    .end local v334    # "result":Z
    .end local v366    # "userid":I
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v335, v0

    .line 2187
    .local v335, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    move-object/from16 v0, p3

    move-object/from16 v1, v335

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2189
    const/4 v6, 0x1

    return v6

    .line 2194
    .end local v335    # "result":[I
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2196
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v334, v0

    .line 2197
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2198
    move/from16 v0, v334

    if-eqz v0, :cond_8a

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    const/4 v6, 0x1

    return v6

    .line 2198
    :cond_8a
    const/4 v6, 0x0

    goto :goto_78

    .line 2203
    .end local v69    # "taskId":I
    .end local v334    # "result":Z
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2204
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v292, v0

    .line 2206
    .local v292, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2207
    const/4 v6, 0x1

    return v6

    .line 2211
    .end local v292    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2212
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v292, v0

    .line 2214
    .restart local v292    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2215
    const/4 v6, 0x1

    return v6

    .line 2219
    .end local v292    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2220
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v293, v0

    .line 2222
    .local v293, "observer":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v373, v0

    .line 2223
    .local v373, "which":I
    move-object/from16 v0, p0

    move-object/from16 v1, v293

    move/from16 v2, v373

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 2224
    const/4 v6, 0x1

    return v6

    .line 2228
    .end local v293    # "observer":Landroid/app/IUidObserver;
    .end local v373    # "which":I
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2229
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v293, v0

    .line 2231
    .restart local v293    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v293

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2232
    const/4 v6, 0x1

    return v6

    .line 2237
    .end local v293    # "observer":Landroid/app/IUidObserver;
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2239
    .restart local v311    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v212

    .line 2240
    .local v212, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2241
    if-eqz v212, :cond_8b

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2242
    const/4 v6, 0x1

    return v6

    .line 2241
    :cond_8b
    const/4 v6, 0x0

    goto :goto_79

    .line 2247
    .end local v212    # "ask":Z
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2249
    .restart local v311    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8c

    const/16 v212, 0x1

    .line 2250
    .restart local v212    # "ask":Z
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    move/from16 v2, v212

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2252
    const/4 v6, 0x1

    return v6

    .line 2249
    .end local v212    # "ask":Z
    :cond_8c
    const/16 v212, 0x0

    goto :goto_7a

    .line 2256
    .end local v311    # "pkg":Ljava/lang/String;
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2257
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2259
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v328, v0

    .line 2260
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    move/from16 v0, v328

    if-eqz v0, :cond_8d

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    const/4 v6, 0x1

    return v6

    .line 2261
    :cond_8d
    const/4 v6, 0x0

    goto :goto_7b

    .line 2266
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v328    # "res":Z
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2267
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2269
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v328, v0

    .line 2270
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    move/from16 v0, v328

    if-eqz v0, :cond_8e

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2272
    const/4 v6, 0x1

    return v6

    .line 2271
    :cond_8e
    const/4 v6, 0x0

    goto :goto_7c

    .line 2276
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v328    # "res":Z
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2277
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2279
    .restart local v318    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2280
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2281
    if-eqz v9, :cond_8f

    .line 2282
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2283
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2287
    :goto_7d
    const/4 v6, 0x1

    return v6

    .line 2285
    :cond_8f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7d

    .line 2291
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v318    # "r":Landroid/content/IIntentSender;
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2292
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v318, v0

    .line 2294
    .restart local v318    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v314, v0

    .line 2295
    .local v314, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v318

    move-object/from16 v2, v314

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v354, v0

    .line 2296
    .restart local v354    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    move-object/from16 v0, p3

    move-object/from16 v1, v354

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2298
    const/4 v6, 0x1

    return v6

    .line 2302
    .end local v314    # "prefix":Ljava/lang/String;
    .end local v318    # "r":Landroid/content/IIntentSender;
    .end local v354    # "tag":Ljava/lang/String;
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2304
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    const/4 v6, 0x1

    return v6

    .line 2310
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v310, v0

    .line 2312
    .restart local v310    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v317, v0

    .line 2313
    .local v317, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    move-object/from16 v0, p3

    move-object/from16 v1, v317

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2315
    const/4 v6, 0x1

    return v6

    .line 2319
    .end local v310    # "pids":[I
    .end local v317    # "pss":[J
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2320
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v290, v0

    move-object/from16 v0, v290

    check-cast v0, Ljava/lang/CharSequence;

    move-object/16 v290, v0

    .line 2321
    .local v290, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_90

    const/16 v208, 0x1

    .line 2322
    .local v208, "always":Z
    :goto_7e
    move-object/from16 v0, p0

    move-object/from16 v1, v290

    move/from16 v2, v208

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    const/4 v6, 0x1

    return v6

    .line 2321
    .end local v208    # "always":Z
    :cond_90
    const/16 v208, 0x0

    goto :goto_7e

    .line 2328
    .end local v290    # "msg":Ljava/lang/CharSequence;
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    const/4 v6, 0x1

    return v6

    .line 2335
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(I)V

    .line 2337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    const/4 v6, 0x1

    return v6

    .line 2342
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2344
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v229

    .line 2345
    .local v229, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v229

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v328, v0

    .line 2346
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2347
    move/from16 v0, v328

    if-eqz v0, :cond_91

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    const/4 v6, 0x1

    return v6

    .line 2347
    :cond_91
    const/4 v6, 0x0

    goto :goto_7f

    .line 2352
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v229    # "destAffinity":Ljava/lang/String;
    .end local v328    # "res":Z
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2354
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v355, v0

    move-object/from16 v0, v355

    check-cast v0, Landroid/content/Intent;

    move-object/16 v355, v0

    .line 2355
    .local v355, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2356
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    move-object/16 v336, v0

    .line 2357
    .restart local v336    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_92

    .line 2358
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v336, v0

    .end local v336    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v336

    check-cast v0, Landroid/content/Intent;

    move-object/16 v336, v0

    .line 2360
    :cond_92
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v355

    move/from16 v3, v53

    move-object/from16 v4, v336

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v328, v0

    .line 2361
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2362
    move/from16 v0, v328

    if-eqz v0, :cond_93

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    const/4 v6, 0x1

    return v6

    .line 2362
    :cond_93
    const/4 v6, 0x0

    goto :goto_80

    .line 2367
    .end local v53    # "resultCode":I
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    .end local v355    # "target":Landroid/content/Intent;
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2369
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v322, v0

    .line 2370
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2371
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    const/4 v6, 0x1

    return v6

    .line 2376
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v322    # "res":I
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2378
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 2379
    .restart local v327    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    move-object/from16 v0, p3

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2381
    const/4 v6, 0x1

    return v6

    .line 2385
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v327    # "res":Ljava/lang/String;
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2386
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v294, v0

    .line 2388
    .local v294, "observer":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 2389
    .restart local v127    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v294

    move-object/from16 v2, v127

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 2390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2391
    const/4 v6, 0x1

    return v6

    .line 2395
    .end local v127    # "name":Ljava/lang/String;
    .end local v294    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2396
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v294, v0

    .line 2398
    .restart local v294    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v294

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    const/4 v6, 0x1

    return v6

    .line 2404
    .end local v294    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v216

    .line 2406
    .local v216, "bugreportType":I
    move-object/from16 v0, p0

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->requestBugReport(I)V

    .line 2407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    const/4 v6, 0x1

    return v6

    .line 2412
    .end local v216    # "bugreportType":I
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 2414
    .restart local v131    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_94

    const/16 v204, 0x1

    .line 2415
    .local v204, "aboveSystem":Z
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 2416
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v131

    move/from16 v2, v204

    move-object/from16 v3, v319

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v324, v0

    .line 2417
    .local v324, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2418
    move-object/from16 v0, p3

    move-wide/from16 v1, v324

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2419
    const/4 v6, 0x1

    return v6

    .line 2414
    .end local v204    # "aboveSystem":Z
    .end local v319    # "reason":Ljava/lang/String;
    .end local v324    # "res":J
    :cond_94
    const/16 v204, 0x0

    .restart local v204    # "aboveSystem":Z
    goto :goto_81

    .line 2423
    .end local v131    # "pid":I
    .end local v204    # "aboveSystem":Z
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2425
    .local v170, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v326, v0

    .line 2426
    .local v326, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    move-object/from16 v0, p3

    move-object/from16 v1, v326

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2428
    const/4 v6, 0x1

    return v6

    .line 2432
    .end local v170    # "requestType":I
    .end local v326    # "res":Landroid/os/Bundle;
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2434
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v171

    .line 2435
    .local v171, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v172

    .line 2436
    .local v172, "receiverExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2437
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_95

    const/16 v174, 0x1

    .line 2438
    .local v174, "focused":Z
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_96

    const/16 v175, 0x1

    .local v175, "newSessionId":Z
    :goto_83
    move-object/from16 v169, p0

    .line 2439
    invoke-virtual/range {v169 .. v175}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    move/16 v328, v0

    .line 2441
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2442
    move/from16 v0, v328

    if-eqz v0, :cond_97

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    const/4 v6, 0x1

    return v6

    .line 2437
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v328    # "res":Z
    :cond_95
    const/16 v174, 0x0

    .restart local v174    # "focused":Z
    goto :goto_82

    .line 2438
    :cond_96
    const/16 v175, 0x0

    goto :goto_83

    .line 2442
    .restart local v175    # "newSessionId":Z
    .restart local v328    # "res":Z
    :cond_97
    const/4 v6, 0x0

    goto :goto_84

    .line 2447
    .end local v170    # "requestType":I
    .end local v171    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v172    # "receiverExtras":Landroid/os/Bundle;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v174    # "focused":Z
    .end local v175    # "newSessionId":Z
    .end local v328    # "res":Z
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2449
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v178

    .line 2450
    .local v178, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/app/assist/AssistStructure;

    .line 2451
    .local v179, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/app/assist/AssistContent;

    .line 2452
    .local v180, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_98

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v181, v6

    .local v181, "referrer":Landroid/net/Uri;
    :goto_85
    move-object/from16 v176, p0

    move-object/from16 v177, v93

    .line 2453
    invoke-virtual/range {v176 .. v181}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2455
    const/4 v6, 0x1

    return v6

    .line 2452
    .end local v181    # "referrer":Landroid/net/Uri;
    :cond_98
    const/16 v181, 0x0

    goto :goto_85

    .line 2459
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v178    # "extras":Landroid/os/Bundle;
    .end local v179    # "structure":Landroid/app/assist/AssistStructure;
    .end local v180    # "content":Landroid/app/assist/AssistContent;
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2460
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2461
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 2462
    .restart local v170    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v185

    .line 2463
    .local v185, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v186

    .line 2464
    .local v186, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v187

    .local v187, "args":Landroid/os/Bundle;
    move-object/from16 v182, p0

    move-object/from16 v183, v9

    move/from16 v184, v170

    .line 2465
    invoke-virtual/range {v182 .. v187}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v328, v0

    .line 2466
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2467
    move/from16 v0, v328

    if-eqz v0, :cond_99

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2468
    const/4 v6, 0x1

    return v6

    .line 2467
    :cond_99
    const/4 v6, 0x0

    goto :goto_86

    .line 2472
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "requestType":I
    .end local v185    # "hint":Ljava/lang/String;
    .end local v186    # "userHandle":I
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v328    # "res":Z
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v328, v0

    .line 2474
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    move/from16 v0, v328

    if-eqz v0, :cond_9a

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    const/4 v6, 0x1

    return v6

    .line 2475
    :cond_9a
    const/4 v6, 0x0

    goto :goto_87

    .line 2480
    .end local v328    # "res":Z
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2482
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v187

    .line 2483
    .restart local v187    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v187

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v328, v0

    .line 2484
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2485
    move/from16 v0, v328

    if-eqz v0, :cond_9b

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2486
    const/4 v6, 0x1

    return v6

    .line 2485
    :cond_9b
    const/4 v6, 0x0

    goto :goto_88

    .line 2490
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v187    # "args":Landroid/os/Bundle;
    .end local v328    # "res":Z
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 2492
    .restart local v210    # "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2493
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v319, v0

    .line 2494
    .restart local v319    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v210

    move/from16 v2, v17

    move-object/from16 v3, v319

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2496
    const/4 v6, 0x1

    return v6

    .line 2500
    .end local v17    # "userId":I
    .end local v210    # "appId":I
    .end local v319    # "reason":Ljava/lang/String;
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2502
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9c

    const/16 v207, 0x1

    .line 2503
    .local v207, "allowRestart":Z
    :goto_89
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v207

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2505
    const/4 v6, 0x1

    return v6

    .line 2502
    .end local v207    # "allowRestart":Z
    :cond_9c
    const/16 v207, 0x0

    goto :goto_89

    .line 2509
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2511
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2513
    const/4 v6, 0x1

    return v6

    .line 2517
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2519
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    const/4 v6, 0x1

    return v6

    .line 2525
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2528
    const/4 v6, 0x1

    return v6

    .line 2532
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    const/4 v6, 0x1

    return v6

    .line 2539
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v303, v0

    .line 2542
    .local v303, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v218

    .line 2544
    .local v218, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    move-object/from16 v2, v218

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v205

    .line 2545
    .local v205, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    if-eqz v205, :cond_9d

    .line 2547
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2548
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2552
    :goto_8a
    const/4 v6, 0x1

    return v6

    .line 2550
    :cond_9d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8a

    .line 2556
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v218    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v303    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v205

    .line 2559
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2561
    const/4 v6, 0x1

    return v6

    .line 2565
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v230

    .line 2567
    .local v230, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v205

    .line 2568
    .restart local v205    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2569
    if-eqz v205, :cond_9e

    .line 2570
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    invoke-interface/range {v205 .. v205}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2575
    :goto_8b
    const/4 v6, 0x1

    return v6

    .line 2573
    :cond_9e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 2579
    .end local v205    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v230    # "displayId":I
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2581
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v230

    .line 2582
    .restart local v230    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2584
    const/4 v6, 0x1

    return v6

    .line 2588
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v230    # "displayId":I
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2590
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    const/4 v6, 0x1

    return v6

    .line 2596
    .end local v69    # "taskId":I
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2598
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2600
    const/4 v6, 0x1

    return v6

    .line 2604
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2606
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startSystemLockTaskMode(I)V

    .line 2607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    const/4 v6, 0x1

    return v6

    .line 2612
    .end local v69    # "taskId":I
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2613
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    const/4 v6, 0x1

    return v6

    .line 2619
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopSystemLockTaskMode()V

    .line 2621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2622
    const/4 v6, 0x1

    return v6

    .line 2626
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v0

    move/16 v268, v0

    .line 2628
    .local v268, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2629
    move/from16 v0, v268

    if-eqz v0, :cond_9f

    const/4 v6, 0x1

    :goto_8c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2630
    const/4 v6, 0x1

    return v6

    .line 2629
    :cond_9f
    const/4 v6, 0x0

    goto :goto_8c

    .line 2634
    .end local v268    # "isInLockTaskMode":Z
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2635
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v0

    move/16 v283, v0

    .line 2636
    .local v283, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2638
    const/4 v6, 0x1

    return v6

    .line 2642
    .end local v283    # "lockTaskModeState":I
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2644
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2646
    const/4 v6, 0x1

    return v6

    .line 2650
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2653
    .restart local v93    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v367, v0

    move-object/from16 v0, v367

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v367, v0

    .line 2654
    .local v367, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v367

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    const/4 v6, 0x1

    return v6

    .line 2660
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v367    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2662
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v331, v0

    .line 2663
    .local v331, "resizeableMode":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v331

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(II)V

    .line 2664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    const/4 v6, 0x1

    return v6

    .line 2669
    .end local v69    # "taskId":I
    .end local v331    # "resizeableMode":I
    :pswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2671
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v330, v0

    .line 2672
    .local v330, "resizeMode":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/graphics/Rect;

    .line 2673
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v77

    move/from16 v3, v330

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2675
    const/4 v6, 0x1

    return v6

    .line 2679
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v330    # "resizeMode":I
    :pswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2681
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v77

    .line 2682
    .restart local v77    # "r":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2683
    const/4 v6, 0x0

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2684
    const/4 v6, 0x1

    return v6

    .line 2688
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    :pswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v236

    .line 2690
    .local v236, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2691
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v236

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v251

    .line 2692
    .local v251, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2693
    if-nez v251, :cond_a0

    .line 2694
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2699
    :goto_8d
    const/4 v6, 0x1

    return v6

    .line 2696
    :cond_a0
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    const/4 v6, 0x0

    move-object/from16 v0, v251

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8d

    .line 2703
    .end local v17    # "userId":I
    .end local v236    # "filename":Ljava/lang/String;
    .end local v251    # "icon":Landroid/graphics/Bitmap;
    :pswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_a1

    .line 2706
    const/16 v217, 0x0

    .line 2710
    :goto_8e
    invoke-static/range {v217 .. v217}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v299, v0

    .line 2711
    .restart local v299    # "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v299

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    const/4 v6, 0x1

    return v6

    .line 2708
    .end local v299    # "options":Landroid/app/ActivityOptions;
    :cond_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v217

    .restart local v217    # "bundle":Landroid/os/Bundle;
    goto :goto_8e

    .line 2717
    .end local v217    # "bundle":Landroid/os/Bundle;
    :pswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2719
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_a2

    const/16 v232, 0x1

    .line 2720
    .local v232, "enable":Z
    :goto_8f
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v232

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v351, v0

    .line 2721
    .restart local v351    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    move/from16 v0, v351

    if-eqz v0, :cond_a3

    const/4 v6, 0x1

    :goto_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    const/4 v6, 0x1

    return v6

    .line 2719
    .end local v232    # "enable":Z
    .end local v351    # "success":Z
    :cond_a2
    const/16 v232, 0x0

    goto :goto_8f

    .line 2722
    .restart local v232    # "enable":Z
    .restart local v351    # "success":Z
    :cond_a3
    const/4 v6, 0x0

    goto :goto_90

    .line 2727
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    .end local v351    # "success":Z
    :pswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2729
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v233

    .line 2730
    .restart local v233    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2731
    if-eqz v233, :cond_a4

    const/4 v6, 0x1

    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    const/4 v6, 0x1

    return v6

    .line 2731
    :cond_a4
    const/4 v6, 0x0

    goto :goto_91

    .line 2736
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v233    # "enabled":Z
    :pswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2738
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2740
    const/4 v6, 0x1

    return v6

    .line 2744
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2746
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2748
    const/4 v6, 0x1

    return v6

    .line 2752
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2754
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2756
    const/4 v6, 0x1

    return v6

    .line 2760
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2761
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2763
    const/4 v6, 0x1

    return v6

    .line 2767
    :pswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 2769
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v238

    .line 2770
    .local v238, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v132

    move-object/from16 v2, v238

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    const/4 v6, 0x1

    return v6

    .line 2776
    .end local v132    # "uid":I
    .end local v238    # "firstPacket":[B
    :pswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v190

    .line 2778
    .local v190, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 2779
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v192

    .line 2780
    .local v192, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v194

    .local v194, "reportPackage":Ljava/lang/String;
    move-object/from16 v189, p0

    move/from16 v191, v132

    .line 2781
    invoke-virtual/range {v189 .. v194}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2783
    const/4 v6, 0x1

    return v6

    .line 2787
    .end local v132    # "uid":I
    .end local v190    # "procName":Ljava/lang/String;
    .end local v192    # "maxMemSize":J
    .end local v194    # "reportPackage":Ljava/lang/String;
    :pswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2789
    .restart local v162    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2791
    const/4 v6, 0x1

    return v6

    .line 2795
    .end local v162    # "path":Ljava/lang/String;
    :pswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2796
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2798
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a5

    const/4 v0, 0x1

    move/16 v271, v0

    .line 2799
    .local v271, "keepAwake":Z
    :goto_92
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v271

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2801
    const/4 v6, 0x1

    return v6

    .line 2798
    .end local v271    # "keepAwake":Z
    :cond_a5
    const/4 v0, 0x0

    move/16 v271, v0

    goto :goto_92

    .line 2805
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2807
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    move-object/16 v302, v0

    .line 2808
    .local v302, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v302

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2810
    const/4 v6, 0x1

    return v6

    .line 2814
    .end local v17    # "userId":I
    .end local v302    # "packages":[Ljava/lang/String;
    :pswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2816
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2818
    const/4 v6, 0x1

    return v6

    .line 2822
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2824
    .restart local v311    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2825
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v322, v0

    .line 2826
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2827
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2828
    const/4 v6, 0x1

    return v6

    .line 2832
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v311    # "pkg":Ljava/lang/String;
    .end local v322    # "res":I
    :pswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 2834
    .restart local v140    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2835
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 2836
    .restart local v272    # "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, v17

    move/from16 v3, v272

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v328, v0

    .line 2837
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2838
    move/from16 v0, v328

    if-eqz v0, :cond_a6

    const/4 v6, 0x1

    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2839
    const/4 v6, 0x1

    return v6

    .line 2838
    :cond_a6
    const/4 v6, 0x0

    goto :goto_93

    .line 2843
    .end local v17    # "userId":I
    .end local v140    # "process":Ljava/lang/String;
    .end local v272    # "level":I
    .end local v328    # "res":Z
    :pswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2845
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v328, v0

    .line 2846
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    move/from16 v0, v328

    if-eqz v0, :cond_a7

    const/4 v6, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    const/4 v6, 0x1

    return v6

    .line 2847
    :cond_a7
    const/4 v6, 0x0

    goto :goto_94

    .line 2852
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v328    # "res":Z
    :pswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2853
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startBinderTracking()Z

    move-result v0

    move/16 v328, v0

    .line 2854
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2855
    move/from16 v0, v328

    if-eqz v0, :cond_a8

    const/4 v6, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2856
    const/4 v6, 0x1

    return v6

    .line 2855
    :cond_a8
    const/4 v6, 0x0

    goto :goto_95

    .line 2860
    .end local v328    # "res":Z
    :pswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a9

    .line 2862
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v163, v6

    .line 2863
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_96
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v328, v0

    .line 2864
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2865
    move/from16 v0, v328

    if-eqz v0, :cond_aa

    const/4 v6, 0x1

    :goto_97
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2866
    const/4 v6, 0x1

    return v6

    .line 2862
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :cond_a9
    const/16 v163, 0x0

    goto :goto_96

    .line 2865
    .restart local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v328    # "res":Z
    :cond_aa
    const/4 v6, 0x0

    goto :goto_97

    .line 2869
    .end local v163    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v328    # "res":Z
    :pswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2871
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v76

    .line 2872
    .restart local v76    # "stackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2873
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2874
    const/4 v6, 0x1

    return v6

    .line 2877
    .end local v76    # "stackId":I
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2879
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 2880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2881
    const/4 v6, 0x1

    return v6

    .line 2884
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2886
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v249

    .line 2887
    .local v249, "horizontal":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v368, v0

    .line 2888
    .local v368, "vertical":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v344, v0

    .line 2889
    .local v344, "smallest":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v249

    move-object/from16 v3, v368

    move-object/from16 v4, v344

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 2890
    const/4 v6, 0x1

    return v6

    .line 2893
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v249    # "horizontal":[I
    .end local v344    # "smallest":[I
    .end local v368    # "vertical":[I
    :pswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ab

    const/4 v0, 0x1

    move/16 v352, v0

    .line 2895
    .local v352, "suppress":Z
    :goto_98
    move-object/from16 v0, p0

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->suppressResizeConfigChanges(Z)V

    .line 2896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2897
    const/4 v6, 0x1

    return v6

    .line 2894
    .end local v352    # "suppress":Z
    :cond_ab
    const/4 v0, 0x0

    move/16 v352, v0

    goto :goto_98

    .line 2900
    :pswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 2902
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ac

    const/4 v0, 0x1

    move/16 v297, v0

    .line 2903
    .local v297, "onTop":Z
    :goto_99
    move-object/from16 v0, p0

    move/from16 v1, v76

    move/from16 v2, v297

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTasksToFullscreenStack(IZ)V

    .line 2904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2905
    const/4 v6, 0x1

    return v6

    .line 2902
    .end local v297    # "onTop":Z
    :cond_ac
    const/4 v0, 0x0

    move/16 v297, v0

    goto :goto_99

    .line 2908
    .end local v76    # "stackId":I
    :pswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 2910
    .restart local v132    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v311, v0

    .line 2911
    .restart local v311    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v132

    move-object/from16 v2, v311

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppStartMode(ILjava/lang/String;)I

    move-result v0

    move/16 v322, v0

    .line 2912
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2913
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2914
    const/4 v6, 0x1

    return v6

    .line 2917
    .end local v132    # "uid":I
    .end local v311    # "pkg":Ljava/lang/String;
    .end local v322    # "res":I
    :pswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2919
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v254

    .line 2920
    .local v254, "inMultiWindow":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2921
    if-eqz v254, :cond_ad

    const/4 v6, 0x1

    :goto_9a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2922
    const/4 v6, 0x1

    return v6

    .line 2921
    :cond_ad
    const/4 v6, 0x0

    goto :goto_9a

    .line 2925
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v254    # "inMultiWindow":Z
    :pswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2927
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v255

    .line 2928
    .local v255, "inPip":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2929
    if-eqz v255, :cond_ae

    const/4 v6, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2930
    const/4 v6, 0x1

    return v6

    .line 2929
    :cond_ae
    const/4 v6, 0x0

    goto :goto_9b

    .line 2933
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v255    # "inPip":Z
    :pswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2935
    .restart local v93    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->enterPictureInPictureMode(Landroid/os/IBinder;)V

    .line 2936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2937
    const/4 v6, 0x1

    return v6

    .line 2940
    .end local v93    # "token":Landroid/os/IBinder;
    :pswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v93

    .line 2942
    .restart local v93    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_af

    const/16 v232, 0x1

    .line 2943
    .local v232, "enable":Z
    :goto_9c
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v300, v0

    move-object/from16 v0, v300

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v300, v0

    .line 2944
    .local v300, "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v232

    move-object/from16 v3, v300

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    move/16 v322, v0

    .line 2945
    .restart local v322    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2946
    move-object/from16 v0, p3

    move/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2947
    const/4 v6, 0x1

    return v6

    .line 2942
    .end local v232    # "enable":Z
    .end local v300    # "packageName":Landroid/content/ComponentName;
    .end local v322    # "res":I
    :cond_af
    const/16 v232, 0x0

    .restart local v232    # "enable":Z
    goto :goto_9c

    .line 2950
    .end local v93    # "token":Landroid/os/IBinder;
    .end local v232    # "enable":Z
    :pswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2951
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v300, v0

    move-object/from16 v0, v300

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v300, v0

    .line 2952
    .restart local v300    # "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v300

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    move/16 v328, v0

    .line 2953
    .restart local v328    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2954
    move/from16 v0, v328

    if-eqz v0, :cond_b0

    const/4 v6, 0x1

    :goto_9d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2955
    const/4 v6, 0x1

    return v6

    .line 2954
    :cond_b0
    const/4 v6, 0x0

    goto :goto_9d

    .line 2958
    .end local v300    # "packageName":Landroid/content/ComponentName;
    .end local v328    # "res":Z
    :pswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v186

    .line 2960
    .restart local v186    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppForeground(I)Z

    move-result v0

    move/16 v266, v0

    .line 2961
    .restart local v266    # "isForeground":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2962
    move/from16 v0, v266

    if-eqz v0, :cond_b1

    const/4 v6, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2963
    const/4 v6, 0x1

    return v6

    .line 2962
    :cond_b1
    const/4 v6, 0x0

    goto :goto_9e

    .line 2966
    .end local v186    # "userHandle":I
    .end local v266    # "isForeground":Z
    :pswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    const/4 v6, 0x1

    return v6

    .line 2971
    :pswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 2973
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeStack(I)V

    .line 2974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2975
    const/4 v6, 0x1

    return v6

    .line 2978
    .end local v76    # "stackId":I
    :pswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2980
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLockedProfile(I)V

    .line 2981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    const/4 v6, 0x1

    return v6

    .line 2985
    .end local v17    # "userId":I
    :pswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2986
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2987
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/ActivityManagerNative;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    .line 2988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2989
    const/4 v6, 0x1

    return v6

    .line 2992
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2993
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->sendIdleJobTrigger()V

    .line 2994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    const/4 v6, 0x1

    return v6

    .line 2998
    :pswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v196

    .line 3000
    .local v196, "sender":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 3001
    .local v197, "scode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3002
    :goto_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3004
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3003
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v200

    .line 3005
    .local v200, "finishedReceiver":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v201

    .line 3006
    .local v201, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a0
    move-object/from16 v195, p0

    move-object/from16 v198, v9

    move-object/from16 v199, v10

    move-object/from16 v202, v16

    .line 3007
    invoke-virtual/range {v195 .. v202}, Landroid/app/ActivityManagerNative;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    move/16 v332, v0

    .line 3009
    .restart local v332    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3010
    move-object/from16 v0, p3

    move/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3011
    const/4 v6, 0x1

    return v6

    .line 3001
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    .end local v332    # "result":I
    :cond_b2
    const/4 v9, 0x0

    .local v9, "intent":Landroid/content/Intent;
    goto :goto_9f

    .line 3006
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local v201    # "requiredPermission":Ljava/lang/String;
    :cond_b3
    const/16 v16, 0x0

    goto :goto_a0

    .line 3014
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v196    # "sender":Landroid/content/IIntentSender;
    .end local v197    # "scode":I
    .end local v200    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v201    # "requiredPermission":Ljava/lang/String;
    :pswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v361, v0

    .line 3016
    .local v361, "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v361

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setVrThread(I)V

    .line 3017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    const/4 v6, 0x1

    return v6

    .line 3021
    .end local v361    # "tid":I
    :pswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v361, v0

    .line 3023
    .restart local v361    # "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v361

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setRenderThread(I)V

    .line 3024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3025
    const/4 v6, 0x1

    return v6

    .line 3028
    .end local v361    # "tid":I
    :pswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    const/16 v248, 0x1

    .line 3030
    .local v248, "hasTopUi":Z
    :goto_a1
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setHasTopUi(Z)V

    .line 3031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3032
    const/4 v6, 0x1

    return v6

    .line 3029
    .end local v248    # "hasTopUi":Z
    :cond_b4
    const/16 v248, 0x0

    goto :goto_a1

    .line 3035
    :pswitch_110
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3036
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v264, v0

    move-object/from16 v0, v264

    check-cast v0, Landroid/app/PendingIntent;

    move-object/16 v264, v0

    .line 3037
    .local v264, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->canBypassWorkChallenge(Landroid/app/PendingIntent;)Z

    move-result v0

    move/16 v334, v0

    .line 3038
    .restart local v334    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    move/from16 v0, v334

    if-eqz v0, :cond_b5

    const/4 v6, 0x1

    :goto_a2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3040
    const/4 v6, 0x1

    return v6

    .line 3039
    :cond_b5
    const/4 v6, 0x0

    goto :goto_a2

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7e
        :pswitch_1
        :pswitch_70
        :pswitch_71
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_26
        :pswitch_2d
        :pswitch_0
        :pswitch_2f
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_42
        :pswitch_43
        :pswitch_e
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_73
        :pswitch_74
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_4b
        :pswitch_59
        :pswitch_5a
        :pswitch_60
        :pswitch_61
        :pswitch_63
        :pswitch_65
        :pswitch_67
        :pswitch_68
        :pswitch_75
        :pswitch_6e
        :pswitch_81
        :pswitch_27
        :pswitch_51
        :pswitch_1f
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_78
        :pswitch_b
        :pswitch_79
        :pswitch_46
        :pswitch_57
        :pswitch_58
        :pswitch_50
        :pswitch_62
        :pswitch_4c
        :pswitch_2e
        :pswitch_6f
        :pswitch_2a
        :pswitch_66
        :pswitch_85
        :pswitch_7c
        :pswitch_29
        :pswitch_28
        :pswitch_2b
        :pswitch_87
        :pswitch_8c
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_5e
        :pswitch_5f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_6
        :pswitch_95
        :pswitch_7f
        :pswitch_82
        :pswitch_96
        :pswitch_4
        :pswitch_13
        :pswitch_5
        :pswitch_2c
        :pswitch_98
        :pswitch_80
        :pswitch_99
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_b2
        :pswitch_1e
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_b9
        :pswitch_ba
        :pswitch_ad
        :pswitch_3d
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_bb
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_0
        :pswitch_83
        :pswitch_41
        :pswitch_47
        :pswitch_86
        :pswitch_7d
        :pswitch_b1
        :pswitch_c4
        :pswitch_c5
        :pswitch_72
        :pswitch_f
        :pswitch_c6
        :pswitch_44
        :pswitch_bc
        :pswitch_2
        :pswitch_b0
        :pswitch_c8
        :pswitch_c9
        :pswitch_b3
        :pswitch_ca
        :pswitch_cb
        :pswitch_0
        :pswitch_bd
        :pswitch_cc
        :pswitch_ce
        :pswitch_c7
        :pswitch_d2
        :pswitch_97
        :pswitch_d3
        :pswitch_d8
        :pswitch_30
        :pswitch_33
        :pswitch_38
        :pswitch_3b
        :pswitch_39
        :pswitch_9b
        :pswitch_9c
        :pswitch_d5
        :pswitch_d4
        :pswitch_d6
        :pswitch_d7
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_45
        :pswitch_e7
        :pswitch_db
        :pswitch_d9
        :pswitch_f7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_be
        :pswitch_ae
        :pswitch_3a
        :pswitch_dc
        :pswitch_dd
        :pswitch_df
        :pswitch_e1
        :pswitch_e4
        :pswitch_7
        :pswitch_9d
        :pswitch_23
        :pswitch_de
        :pswitch_e0
        :pswitch_10
        :pswitch_9a
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_c
        :pswitch_ee
        :pswitch_c2
        :pswitch_3
        :pswitch_24
        :pswitch_25
        :pswitch_11
        :pswitch_12
        :pswitch_ef
        :pswitch_e8
        :pswitch_cf
        :pswitch_e9
        :pswitch_64
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f0
        :pswitch_da
        :pswitch_3c
        :pswitch_e5
        :pswitch_cd
        :pswitch_e6
        :pswitch_e2
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_7a
        :pswitch_7b
        :pswitch_f6
        :pswitch_e3
        :pswitch_f5
        :pswitch_c3
        :pswitch_b7
        :pswitch_b8
        :pswitch_d0
        :pswitch_d1
        :pswitch_f8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f9
        :pswitch_fa
        :pswitch_37
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_31
        :pswitch_fe
        :pswitch_ff
        :pswitch_32
        :pswitch_100
        :pswitch_af
        :pswitch_101
        :pswitch_102
        :pswitch_84
        :pswitch_103
        :pswitch_20
        :pswitch_a3
        :pswitch_36
        :pswitch_104
        :pswitch_6c
        :pswitch_6d
        :pswitch_106
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_107
        :pswitch_108
        :pswitch_76
        :pswitch_77
        :pswitch_34
        :pswitch_105
        :pswitch_35
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_56
    .end packed-switch
.end method

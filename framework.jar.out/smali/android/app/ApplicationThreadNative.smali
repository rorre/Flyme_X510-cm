.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    return-object v1

    .line 63
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 64
    .local v0, "in":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    .line 65
    return-object v0

    .line 68
    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 771
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 130
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
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 766
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 81
    :pswitch_1
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 83
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 84
    .local v7, "finished":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 85
    .local v8, "userLeaving":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 86
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_2
    move-object/from16 v5, p0

    .line 87
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 88
    const/4 v5, 0x1

    return v5

    .line 83
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "finished":Z
    goto :goto_0

    .line 84
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "userLeaving":Z
    goto :goto_1

    .line 86
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 93
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :pswitch_2
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 95
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v125, 0x1

    .line 96
    .local v125, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 97
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v125

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 98
    const/4 v5, 0x1

    return v5

    .line 95
    .end local v9    # "configChanges":I
    .end local v125    # "show":Z
    :cond_3
    const/16 v125, 0x0

    .restart local v125    # "show":Z
    goto :goto_3

    .line 103
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v125    # "show":Z
    :pswitch_3
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 105
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v125, 0x1

    .line 106
    .local v125, "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v125

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 107
    const/4 v5, 0x1

    return v5

    .line 105
    .end local v125    # "show":Z
    :cond_4
    const/16 v125, 0x0

    goto :goto_4

    .line 112
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 114
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v126, 0x1

    .line 115
    .local v126, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v126

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 116
    const/4 v5, 0x1

    return v5

    .line 114
    .end local v126    # "sleeping":Z
    :cond_5
    const/16 v126, 0x0

    goto :goto_5

    .line 121
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 123
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 124
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    .line 125
    .local v27, "isForward":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v121

    .line 126
    .local v121, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    move-object/from16 v3, v121

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 127
    const/4 v5, 0x1

    return v5

    .line 124
    .end local v27    # "isForward":Z
    .end local v121    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    .restart local v27    # "isForward":Z
    goto :goto_6

    .line 132
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    .end local v27    # "isForward":Z
    :pswitch_6
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 134
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 135
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 136
    const/4 v5, 0x1

    return v5

    .line 141
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 143
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 144
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 145
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 146
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 147
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 148
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 149
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 151
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 152
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 154
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 153
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 155
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 156
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v22

    .line 157
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v23

    .line 158
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 159
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 160
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    .line 161
    .local v26, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v27, 0x1

    .line 162
    .restart local v27    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_9
    move-object/from16 v11, p0

    move-object v13, v6

    .line 164
    invoke-virtual/range {v11 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 167
    const/4 v5, 0x1

    return v5

    .line 160
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_7

    .line 161
    :cond_9
    const/16 v27, 0x0

    .restart local v27    # "isForward":Z
    goto :goto_8

    .line 163
    :cond_a
    const/16 v28, 0x0

    goto :goto_9

    .line 172
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :pswitch_8
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 174
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 175
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 176
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 177
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 178
    .restart local v26    # "notResumed":Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 179
    .local v35, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 180
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 181
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 183
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_d

    const/16 v37, 0x1

    .local v37, "preserveWindows":Z
    :goto_b
    move-object/from16 v29, p0

    move-object/from16 v30, v6

    move-object/from16 v31, v24

    move-object/from16 v32, v25

    move/from16 v33, v9

    move/from16 v34, v26

    move-object/from16 v36, v17

    .line 184
    invoke-virtual/range {v29 .. v37}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 186
    const/4 v5, 0x1

    return v5

    .line 177
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v37    # "preserveWindows":Z
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "notResumed":Z
    goto :goto_a

    .line 183
    .restart local v35    # "config":Landroid/content/res/Configuration;
    :cond_d
    const/16 v37, 0x0

    goto :goto_b

    .line 191
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_9
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 193
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 194
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_e

    const/16 v86, 0x1

    .line 195
    .local v86, "andPause":Z
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v86

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    .line 196
    const/4 v5, 0x1

    return v5

    .line 194
    .end local v86    # "andPause":Z
    :cond_e
    const/16 v86, 0x0

    goto :goto_c

    .line 201
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 203
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v96, 0x1

    .line 204
    .local v96, "finishing":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 205
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 206
    const/4 v5, 0x1

    return v5

    .line 203
    .end local v9    # "configChanges":I
    .end local v96    # "finishing":Z
    :cond_f
    const/16 v96, 0x0

    .restart local v96    # "finishing":Z
    goto :goto_d

    .line 211
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v96    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 213
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 214
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 215
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 216
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 217
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 218
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v45, 0x1

    .line 219
    .local v45, "sync":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 220
    .local v46, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "processState":I
    move-object/from16 v38, p0

    move-object/from16 v39, v12

    move-object/from16 v40, v15

    move-object/from16 v41, v18

    .line 221
    invoke-virtual/range {v38 .. v47}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 223
    const/4 v5, 0x1

    return v5

    .line 218
    .end local v45    # "sync":Z
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    :cond_10
    const/16 v45, 0x0

    .restart local v45    # "sync":Z
    goto :goto_e

    .line 227
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    .end local v45    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 229
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/pm/ServiceInfo;

    .line 230
    .local v101, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 231
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 232
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v101

    move-object/from16 v3, v18

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 233
    const/4 v5, 0x1

    return v5

    .line 237
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v47    # "processState":I
    .end local v101    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 239
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 240
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v117, 0x1

    .line 241
    .local v117, "rebind":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 242
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v117

    move/from16 v3, v47

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 243
    const/4 v5, 0x1

    return v5

    .line 240
    .end local v47    # "processState":I
    .end local v117    # "rebind":Z
    :cond_11
    const/16 v117, 0x0

    .restart local v117    # "rebind":Z
    goto :goto_f

    .line 247
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v117    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 249
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 250
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 251
    const/4 v5, 0x1

    return v5

    .line 256
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 258
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/16 v31, 0x1

    .line 259
    .local v31, "taskRemoved":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 260
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 262
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 263
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Intent;

    :goto_11
    move-object/from16 v29, p0

    .line 267
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 268
    const/4 v5, 0x1

    return v5

    .line 258
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    :cond_12
    const/16 v31, 0x0

    .restart local v31    # "taskRemoved":Z
    goto :goto_10

    .line 265
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_13
    const/16 v34, 0x0

    .local v34, "args":Landroid/content/Intent;
    goto :goto_11

    .line 273
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 275
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 276
    const/4 v5, 0x1

    return v5

    .line 281
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 284
    .local v49, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/pm/ApplicationInfo;

    .line 286
    .local v50, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v51

    .line 287
    .local v51, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 288
    new-instance v52, Landroid/content/ComponentName;

    move-object/from16 v0, v52

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 289
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 290
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ProfilerInfo;

    .line 291
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v54

    .line 292
    .local v54, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v89

    .line 293
    .local v89, "binder":Landroid/os/IBinder;
    invoke-static/range {v89 .. v89}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v55

    .line 294
    .local v55, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v89

    .line 296
    invoke-static/range {v89 .. v89}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v56

    .line 297
    .local v56, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 298
    .local v57, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v58, 0x1

    .line 299
    .local v58, "enableBinderTracking":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v59, 0x1

    .line 300
    .local v59, "trackAllocation":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    const/16 v60, 0x1

    .line 301
    .local v60, "restrictedBackupMode":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v61, 0x1

    .line 302
    .local v61, "persistent":Z
    :goto_17
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 303
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 304
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v64

    .line 305
    .local v64, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v65

    .local v65, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v48, p0

    move-object/from16 v53, v28

    move-object/from16 v62, v35

    move-object/from16 v63, v18

    .line 306
    invoke-virtual/range {v48 .. v65}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 310
    const/4 v5, 0x1

    return v5

    .line 288
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v54    # "testArgs":Landroid/os/Bundle;
    .end local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v57    # "testMode":I
    .end local v58    # "enableBinderTracking":Z
    .end local v59    # "trackAllocation":Z
    .end local v60    # "restrictedBackupMode":Z
    .end local v61    # "persistent":Z
    .end local v64    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v65    # "coreSettings":Landroid/os/Bundle;
    .end local v89    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v52, 0x0

    .local v52, "testName":Landroid/content/ComponentName;
    goto :goto_12

    .line 290
    .end local v52    # "testName":Landroid/content/ComponentName;
    :cond_15
    const/16 v28, 0x0

    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_13

    .line 298
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v54    # "testArgs":Landroid/os/Bundle;
    .restart local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v57    # "testMode":I
    .restart local v89    # "binder":Landroid/os/IBinder;
    :cond_16
    const/16 v58, 0x0

    .restart local v58    # "enableBinderTracking":Z
    goto :goto_14

    .line 299
    :cond_17
    const/16 v59, 0x0

    .restart local v59    # "trackAllocation":Z
    goto :goto_15

    .line 300
    :cond_18
    const/16 v60, 0x0

    .restart local v60    # "restrictedBackupMode":Z
    goto :goto_16

    .line 301
    :cond_19
    const/16 v61, 0x0

    .restart local v61    # "persistent":Z
    goto :goto_17

    .line 315
    .end local v49    # "packageName":Ljava/lang/String;
    .end local v50    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v51    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v54    # "testArgs":Landroid/os/Bundle;
    .end local v55    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v56    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v57    # "testMode":I
    .end local v58    # "enableBinderTracking":Z
    .end local v59    # "trackAllocation":Z
    .end local v60    # "restrictedBackupMode":Z
    .end local v61    # "persistent":Z
    .end local v89    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 317
    const/4 v5, 0x1

    return v5

    .line 322
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 324
    const/4 v5, 0x1

    return v5

    .line 329
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 331
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    const/4 v5, 0x1

    return v5

    .line 337
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 339
    .restart local v49    # "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/content/pm/ApplicationInfo;

    .line 340
    .local v85, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleAssetsChanged(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 341
    const/4 v5, 0x1

    return v5

    .line 345
    .end local v49    # "packageName":Ljava/lang/String;
    .end local v85    # "ai":Landroid/content/pm/ApplicationInfo;
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 347
    const/4 v5, 0x1

    return v5

    .line 351
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 357
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 359
    .local v116, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .line 360
    .local v111, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 361
    .local v94, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/net/Uri;

    .line 362
    .local v107, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v111

    move-object/from16 v3, v94

    move-object/from16 v4, v107

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    const/4 v5, 0x1

    return v5

    .line 367
    .end local v94    # "exclList":Ljava/lang/String;
    .end local v107    # "pacFileUrl":Landroid/net/Uri;
    .end local v111    # "port":Ljava/lang/String;
    .end local v116    # "proxy":Ljava/lang/String;
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 369
    const/4 v5, 0x1

    return v5

    .line 373
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 375
    .local v95, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v122

    .line 376
    .local v122, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 377
    .local v82, "args":[Ljava/lang/String;
    if-eqz v95, :cond_1a

    .line 378
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v82

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 380
    :try_start_0
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_1a
    :goto_18
    const/4 v5, 0x1

    return v5

    .line 381
    :catch_0
    move-exception v92

    .local v92, "e":Ljava/io/IOException;
    goto :goto_18

    .line 388
    .end local v82    # "args":[Ljava/lang/String;
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v122    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 390
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v122

    .line 391
    .restart local v122    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 392
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v95, :cond_1b

    .line 393
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v82

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 395
    :try_start_1
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :cond_1b
    :goto_19
    const/4 v5, 0x1

    return v5

    .line 396
    :catch_1
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 403
    .end local v82    # "args":[Ljava/lang/String;
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v122    # "service":Landroid/os/IBinder;
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 404
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v67

    .line 406
    .local v67, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 407
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 408
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 409
    .local v70, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v71

    .line 410
    .local v71, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v72, 0x1

    .line 411
    .local v72, "ordered":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v73, 0x1

    .line 412
    .local v73, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 413
    .restart local v46    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .restart local v47    # "processState":I
    move-object/from16 v66, p0

    move-object/from16 v68, v12

    move/from16 v69, v42

    move/from16 v74, v46

    move/from16 v75, v47

    .line 414
    invoke-virtual/range {v66 .. v75}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 416
    const/4 v5, 0x1

    return v5

    .line 410
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :cond_1c
    const/16 v72, 0x0

    .restart local v72    # "ordered":Z
    goto :goto_1a

    .line 411
    :cond_1d
    const/16 v73, 0x0

    .restart local v73    # "sticky":Z
    goto :goto_1b

    .line 421
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v42    # "resultCode":I
    .end local v67    # "receiver":Landroid/content/IIntentReceiver;
    .end local v70    # "dataStr":Ljava/lang/String;
    .end local v71    # "extras":Landroid/os/Bundle;
    .end local v72    # "ordered":Z
    .end local v73    # "sticky":Z
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 423
    const/4 v5, 0x1

    return v5

    .line 428
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 430
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    .line 431
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 432
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 434
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_1f

    const/16 v118, 0x1

    .line 435
    .local v118, "reportToActivity":Z
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v118

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 436
    const/4 v5, 0x1

    return v5

    .line 434
    .end local v118    # "reportToActivity":Z
    :cond_1f
    const/16 v118, 0x0

    goto :goto_1c

    .line 441
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 444
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 443
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 445
    .restart local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 446
    const/4 v5, 0x1

    return v5

    .line 451
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    const/16 v127, 0x1

    .line 453
    .local v127, "start":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 454
    .local v113, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 455
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 456
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-object/from16 v2, v28

    move/from16 v3, v113

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 457
    const/4 v5, 0x1

    return v5

    .line 452
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v113    # "profileType":I
    .end local v127    # "start":Z
    :cond_20
    const/16 v127, 0x0

    .restart local v127    # "start":Z
    goto :goto_1d

    .line 455
    .restart local v113    # "profileType":I
    :cond_21
    const/16 v28, 0x0

    goto :goto_1e

    .line 462
    .end local v113    # "profileType":I
    .end local v127    # "start":Z
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 464
    .local v98, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 465
    const/4 v5, 0x1

    return v5

    .line 470
    .end local v98    # "group":I
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 472
    .local v87, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 473
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 474
    .local v88, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v18

    move/from16 v3, v88

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 475
    const/4 v5, 0x1

    return v5

    .line 480
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v88    # "backupMode":I
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 482
    .restart local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 483
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 484
    const/4 v5, 0x1

    return v5

    .line 489
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 491
    .local v90, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v108

    .line 492
    .local v108, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v90

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 493
    const/4 v5, 0x1

    return v5

    .line 498
    .end local v90    # "cmd":I
    .end local v108    # "packages":[Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 500
    .local v105, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 501
    const/4 v5, 0x1

    return v5

    .line 506
    .end local v105    # "msg":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v104, 0x1

    .line 508
    .local v104, "managed":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v109

    .line 509
    .local v109, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    .line 510
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v95, v5

    .line 511
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v104

    move-object/from16 v2, v109

    move-object/from16 v3, v95

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 512
    const/4 v5, 0x1

    return v5

    .line 507
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v104    # "managed":Z
    .end local v109    # "path":Ljava/lang/String;
    :cond_22
    const/16 v104, 0x0

    .restart local v104    # "managed":Z
    goto :goto_1f

    .line 510
    .restart local v109    # "path":Ljava/lang/String;
    :cond_23
    const/16 v95, 0x0

    goto :goto_20

    .line 516
    .end local v104    # "managed":Z
    .end local v109    # "path":Ljava/lang/String;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 518
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 519
    .local v83, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 520
    .local v112, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 521
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v95, :cond_24

    .line 522
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v112

    move-object/from16 v3, v82

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 524
    :try_start_2
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 528
    :cond_24
    :goto_21
    const/4 v5, 0x1

    return v5

    .line 525
    :catch_2
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_21

    .line 532
    .end local v82    # "args":[Ljava/lang/String;
    .end local v83    # "activity":Landroid/os/IBinder;
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "prefix":Ljava/lang/String;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v124

    .line 534
    .local v124, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 535
    const/4 v5, 0x1

    return v5

    .line 539
    .end local v124    # "settings":Landroid/os/Bundle;
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 541
    .local v110, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/content/res/CompatibilityInfo;

    .line 542
    .local v91, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 543
    const/4 v5, 0x1

    return v5

    .line 547
    .end local v91    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v110    # "pkg":Ljava/lang/String;
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 549
    .local v103, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 550
    const/4 v5, 0x1

    return v5

    .line 555
    .end local v103    # "level":I
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 557
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/os/Debug$MemoryInfo;

    .line 558
    .local v76, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v77, 0x1

    .line 559
    .local v77, "checkin":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v78, 0x1

    .line 560
    .local v78, "dumpInfo":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v79, 0x1

    .line 561
    .local v79, "dumpDalvik":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v80, 0x1

    .line 562
    .local v80, "dumpSummaryOnly":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v81, 0x1

    .line 563
    .local v81, "dumpUnreachable":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 564
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v95, :cond_25

    .line 566
    :try_start_3
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v75

    move-object/from16 v74, p0

    invoke-virtual/range {v74 .. v82}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    :try_start_4
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 576
    :cond_25
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v5, 0x1

    return v5

    .line 558
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    :cond_26
    const/16 v77, 0x0

    .restart local v77    # "checkin":Z
    goto :goto_22

    .line 559
    :cond_27
    const/16 v78, 0x0

    .restart local v78    # "dumpInfo":Z
    goto :goto_23

    .line 560
    :cond_28
    const/16 v79, 0x0

    .restart local v79    # "dumpDalvik":Z
    goto :goto_24

    .line 561
    :cond_29
    const/16 v80, 0x0

    .restart local v80    # "dumpSummaryOnly":Z
    goto :goto_25

    .line 562
    :cond_2a
    const/16 v81, 0x0

    .restart local v81    # "dumpUnreachable":Z
    goto :goto_26

    .line 571
    .restart local v82    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 568
    .end local v92    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 570
    :try_start_5
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 568
    :goto_28
    throw v5

    .line 571
    :catch_4
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_28

    .line 582
    .end local v76    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v77    # "checkin":Z
    .end local v78    # "dumpInfo":Z
    .end local v79    # "dumpDalvik":Z
    .end local v80    # "dumpSummaryOnly":Z
    .end local v81    # "dumpUnreachable":Z
    .end local v82    # "args":[Ljava/lang/String;
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 584
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 585
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v95, :cond_2b

    .line 587
    :try_start_6
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 590
    :try_start_7
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 596
    :cond_2b
    :goto_29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v5, 0x1

    return v5

    .line 591
    :catch_5
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_29

    .line 588
    .end local v92    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 590
    :try_start_8
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 588
    :goto_2a
    throw v5

    .line 591
    :catch_6
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_2a

    .line 602
    .end local v82    # "args":[Ljava/lang/String;
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 604
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v82

    .line 605
    .restart local v82    # "args":[Ljava/lang/String;
    if-eqz v95, :cond_2c

    .line 607
    :try_start_9
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 610
    :try_start_a
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 616
    :cond_2c
    :goto_2b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v5, 0x1

    return v5

    .line 611
    :catch_7
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_2b

    .line 608
    .end local v92    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 610
    :try_start_b
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 608
    :goto_2c
    throw v5

    .line 611
    :catch_8
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_2c

    .line 622
    .end local v82    # "args":[Ljava/lang/String;
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .line 624
    .local v115, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v5, 0x1

    return v5

    .line 631
    .end local v115    # "provider":Landroid/os/IBinder;
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 633
    .local v84, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v119

    .line 634
    .local v119, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v120

    .line 635
    .local v120, "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v123

    .line 636
    .local v123, "sessionId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v119

    move/from16 v3, v120

    move/from16 v4, v123

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v5, 0x1

    return v5

    .line 643
    .end local v84    # "activityToken":Landroid/os/IBinder;
    .end local v119    # "requestToken":Landroid/os/IBinder;
    .end local v120    # "requestType":I
    .end local v123    # "sessionId":I
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 645
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2d

    const/16 v129, 0x1

    .line 646
    .local v129, "timeout":Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v129

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v5, 0x1

    return v5

    .line 645
    .end local v129    # "timeout":Z
    :cond_2d
    const/16 v129, 0x0

    goto :goto_2d

    .line 653
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 655
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v106, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 656
    .local v106, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v106

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    const/4 v5, 0x1

    return v5

    .line 663
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v106    # "options":Landroid/app/ActivityOptions;
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v128

    .line 665
    .local v128, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/4 v5, 0x1

    return v5

    .line 672
    .end local v128    # "state":I
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ProviderInfo;

    .line 674
    .local v114, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/4 v5, 0x1

    return v5

    .line 681
    .end local v114    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v102

    .line 683
    .local v102, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v102

    if-ne v0, v5, :cond_2e

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    const/4 v5, 0x1

    return v5

    .line 683
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2e

    .line 690
    .end local v102    # "is24Hour":B
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 692
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v5, 0x1

    return v5

    .line 699
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 701
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_2f

    const/16 v93, 0x1

    .line 702
    .local v93, "enabled":Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v5, 0x1

    return v5

    .line 701
    .end local v93    # "enabled":Z
    :cond_2f
    const/16 v93, 0x0

    goto :goto_2f

    .line 709
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_37
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 711
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/4 v5, 0x1

    return v5

    .line 718
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_38
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v97

    .line 720
    .local v97, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v5, 0x1

    return v5

    .line 727
    .end local v97    # "firstPacket":[B
    :pswitch_39
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->startBinderTracking()V

    .line 729
    const/4 v5, 0x1

    return v5

    .line 734
    :pswitch_3a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v95

    .line 736
    .restart local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v95, :cond_30

    .line 737
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V

    .line 739
    :try_start_c
    invoke-virtual/range {v95 .. v95}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 743
    :cond_30
    :goto_30
    const/4 v5, 0x1

    return v5

    .line 740
    :catch_9
    move-exception v92

    .restart local v92    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 748
    .end local v92    # "e":Ljava/io/IOException;
    .end local v95    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_3b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 750
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v99, 0x1

    .line 751
    .local v99, "inMultiWindow":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    .line 752
    const/4 v5, 0x1

    return v5

    .line 750
    .end local v99    # "inMultiWindow":Z
    :cond_31
    const/16 v99, 0x0

    goto :goto_31

    .line 757
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_3c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 759
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/16 v100, 0x1

    .line 760
    .local v100, "inPip":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    .line 761
    const/4 v5, 0x1

    return v5

    .line 759
    .end local v100    # "inPip":Z
    :cond_32
    const/16 v100, 0x0

    goto :goto_32

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_16
        :pswitch_19
        :pswitch_d
        :pswitch_e
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_8
        :pswitch_4
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_31
        :pswitch_13
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_17
        :pswitch_18
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_1b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_1f
        :pswitch_15
    .end packed-switch
.end method

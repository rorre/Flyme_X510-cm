.class public abstract Landroid/content/pm/IFlymePackageManager$Stub;
.super Landroid/os/Binder;
.source "IFlymePackageManager.java"

# interfaces
.implements Landroid/content/pm/IFlymePackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IFlymePackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IFlymePackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IFlymePackageManager"

.field static final TRANSACTION_backupData:I = 0x1

.field static final TRANSACTION_changeInterceptPackage:I = 0x9

.field static final TRANSACTION_changeMayForbitPackage:I = 0xf

.field static final TRANSACTION_getInterceptPackage:I = 0x7

.field static final TRANSACTION_getInternalAppList:I = 0x5

.field static final TRANSACTION_getMayForbitPackage:I = 0xd

.field static final TRANSACTION_getPackageActivateState:I = 0x6

.field static final TRANSACTION_getPackageInfoForVersion:I = 0x4

.field static final TRANSACTION_getProtectionState:I = 0xb

.field static final TRANSACTION_getSystemAppPath:I = 0x12

.field static final TRANSACTION_getSystemAppRecord:I = 0x11

.field static final TRANSACTION_isMzApp:I = 0x13

.field static final TRANSACTION_resetVersion:I = 0x3

.field static final TRANSACTION_setInterceptPackage:I = 0x8

.field static final TRANSACTION_setKeyGuardPackage:I = 0x10

.field static final TRANSACTION_setMayForbitPackage:I = 0xe

.field static final TRANSACTION_setProtectionState:I = 0xc

.field static final TRANSACTION_syncPackageState:I = 0xa

.field static final TRANSACTION_updatePermissions:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.content.pm.IFlymePackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IFlymePackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.content.pm.IFlymePackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IFlymePackageManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/pm/IFlymePackageManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IFlymePackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IFlymePackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v7}, Landroid/content/pm/IFlymePackageManager$Stub;->backupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_2
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->updatePermissions(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->resetVersion(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/IFlymePackageManager$Stub;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .local v10, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v14, 0x1

    return v14

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v10    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_5
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getInternalAppList()Ljava/util/List;

    move-result-object v12

    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->getPackageActivateState(Ljava/lang/String;)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_7
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getInterceptPackage()Ljava/util/List;

    move-result-object v12

    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Landroid/content/pm/IFlymePackageManager$Stub;->setInterceptPackage(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    .local v8, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v2, v8}, Landroid/content/pm/IFlymePackageManager$Stub;->changeInterceptPackage(Ljava/lang/String;Z)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_3

    .restart local v13    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_a
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->syncPackageState()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_b
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getProtectionState()Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .end local v13    # "_result":Z
    :sswitch_c
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v4, 0x1

    .local v4, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v4, v6}, Landroid/content/pm/IFlymePackageManager$Stub;->setProtectionState(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v4    # "_arg0":Z
    .end local v6    # "_arg1":Landroid/os/IBinder;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_6

    .end local v4    # "_arg0":Z
    :sswitch_d
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getMayForbitPackage()Ljava/util/List;

    move-result-object v12

    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Landroid/content/pm/IFlymePackageManager$Stub;->setMayForbitPackage(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v8, 0x1

    .restart local v8    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v2, v8}, Landroid/content/pm/IFlymePackageManager$Stub;->changeMayForbitPackage(Ljava/lang/String;Z)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_8

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_7

    .restart local v13    # "_result":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_10
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_9

    const/4 v8, 0x1

    .restart local v8    # "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    invoke-virtual {p0, v2, v8, v9}, Landroid/content/pm/IFlymePackageManager$Stub;->setKeyGuardPackage(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_9

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    :sswitch_11
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IFlymePackageManager$Stub;->getSystemAppRecord(I)Ljava/util/List;

    move-result-object v12

    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    .end local v1    # "_arg0":I
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/IFlymePackageManager$Stub;->getSystemAppPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->isMzApp(Ljava/lang/String;)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_a

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_a
    const/4 v14, 0x0

    goto :goto_a

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;
.super Ljava/lang/Object;
.source "PasspointManagementObjectManager.java"


# static fields
.field private static final DTFormat:Ljava/text/DateFormat;

.field private static final FQDNPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntervalFactor:J = 0xea60L

.field public static final TAG_AAAServerTrustRoot:Ljava/lang/String; = "AAAServerTrustRoot"

.field public static final TAG_AbleToShare:Ljava/lang/String; = "AbleToShare"

.field public static final TAG_CertSHA256Fingerprint:Ljava/lang/String; = "CertSHA256Fingerprint"

.field public static final TAG_CertURL:Ljava/lang/String; = "CertURL"

.field public static final TAG_CertificateType:Ljava/lang/String; = "CertificateType"

.field public static final TAG_CheckAAAServerCertStatus:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field public static final TAG_Country:Ljava/lang/String; = "Country"

.field public static final TAG_CreationDate:Ljava/lang/String; = "CreationDate"

.field public static final TAG_Credential:Ljava/lang/String; = "Credential"

.field public static final TAG_CredentialPriority:Ljava/lang/String; = "CredentialPriority"

.field public static final TAG_DLBandwidth:Ljava/lang/String; = "DLBandwidth"

.field public static final TAG_DataLimit:Ljava/lang/String; = "DataLimit"

.field public static final TAG_DigitalCertificate:Ljava/lang/String; = "DigitalCertificate"

.field public static final TAG_EAPMethod:Ljava/lang/String; = "EAPMethod"

.field public static final TAG_EAPType:Ljava/lang/String; = "EAPType"

.field public static final TAG_ExpirationDate:Ljava/lang/String; = "ExpirationDate"

.field public static final TAG_Extension:Ljava/lang/String; = "Extension"

.field public static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final TAG_FQDN_Match:Ljava/lang/String; = "FQDN_Match"

.field public static final TAG_FriendlyName:Ljava/lang/String; = "FriendlyName"

.field public static final TAG_HESSID:Ljava/lang/String; = "HESSID"

.field public static final TAG_HomeOI:Ljava/lang/String; = "HomeOI"

.field public static final TAG_HomeOIList:Ljava/lang/String; = "HomeOIList"

.field public static final TAG_HomeOIRequired:Ljava/lang/String; = "HomeOIRequired"

.field public static final TAG_HomeSP:Ljava/lang/String; = "HomeSP"

.field public static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field public static final TAG_IPProtocol:Ljava/lang/String; = "IPProtocol"

.field public static final TAG_IconURL:Ljava/lang/String; = "IconURL"

.field public static final TAG_InnerEAPType:Ljava/lang/String; = "InnerEAPType"

.field public static final TAG_InnerMethod:Ljava/lang/String; = "InnerMethod"

.field public static final TAG_InnerVendorID:Ljava/lang/String; = "InnerVendorID"

.field public static final TAG_InnerVendorType:Ljava/lang/String; = "InnerVendorType"

.field public static final TAG_MachineManaged:Ljava/lang/String; = "MachineManaged"

.field public static final TAG_MaximumBSSLoadValue:Ljava/lang/String; = "MaximumBSSLoadValue"

.field public static final TAG_MinBackhaulThreshold:Ljava/lang/String; = "MinBackhaulThreshold"

.field public static final TAG_NetworkID:Ljava/lang/String; = "NetworkID"

.field public static final TAG_NetworkType:Ljava/lang/String; = "NetworkType"

.field public static final TAG_Other:Ljava/lang/String; = "Other"

.field public static final TAG_OtherHomePartners:Ljava/lang/String; = "OtherHomePartners"

.field public static final TAG_Password:Ljava/lang/String; = "Password"

.field public static final TAG_PerProviderSubscription:Ljava/lang/String; = "PerProviderSubscription"

.field public static final TAG_Policy:Ljava/lang/String; = "Policy"

.field public static final TAG_PolicyUpdate:Ljava/lang/String; = "PolicyUpdate"

.field public static final TAG_PortNumber:Ljava/lang/String; = "PortNumber"

.field public static final TAG_PreferredRoamingPartnerList:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field public static final TAG_Priority:Ljava/lang/String; = "Priority"

.field public static final TAG_Realm:Ljava/lang/String; = "Realm"

.field public static final TAG_RequiredProtoPortTuple:Ljava/lang/String; = "RequiredProtoPortTuple"

.field public static final TAG_Restriction:Ljava/lang/String; = "Restriction"

.field public static final TAG_RoamingConsortiumOI:Ljava/lang/String; = "RoamingConsortiumOI"

.field public static final TAG_SIM:Ljava/lang/String; = "SIM"

.field public static final TAG_SPExclusionList:Ljava/lang/String; = "SPExclusionList"

.field public static final TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final TAG_SoftTokenApp:Ljava/lang/String; = "SoftTokenApp"

.field public static final TAG_StartDate:Ljava/lang/String; = "StartDate"

.field public static final TAG_SubscriptionParameters:Ljava/lang/String; = "SubscriptionParameters"

.field public static final TAG_SubscriptionUpdate:Ljava/lang/String; = "SubscriptionUpdate"

.field public static final TAG_TimeLimit:Ljava/lang/String; = "TimeLimit"

.field public static final TAG_TrustRoot:Ljava/lang/String; = "TrustRoot"

.field public static final TAG_TypeOfSubscription:Ljava/lang/String; = "TypeOfSubscription"

.field public static final TAG_ULBandwidth:Ljava/lang/String; = "ULBandwidth"

.field public static final TAG_URI:Ljava/lang/String; = "URI"

.field public static final TAG_UpdateIdentifier:Ljava/lang/String; = "UpdateIdentifier"

.field public static final TAG_UpdateInterval:Ljava/lang/String; = "UpdateInterval"

.field public static final TAG_UpdateMethod:Ljava/lang/String; = "UpdateMethod"

.field public static final TAG_UsageLimits:Ljava/lang/String; = "UsageLimits"

.field public static final TAG_UsageTimePeriod:Ljava/lang/String; = "UsageTimePeriod"

.field public static final TAG_Username:Ljava/lang/String; = "Username"

.field public static final TAG_UsernamePassword:Ljava/lang/String; = "UsernamePassword"

.field public static final TAG_VendorId:Ljava/lang/String; = "VendorId"

.field public static final TAG_VendorType:Ljava/lang/String; = "VendorType"

.field private static final sSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnabled:Z

.field private final mPpsFile:Ljava/io/File;

.field private final mSPs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    .line 130
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    .line 134
    const-string/jumbo v0, "FQDN_Match"

    new-array v1, v7, [Ljava/lang/Object;

    .line 135
    const-string/jumbo v2, "exactmatch"

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    .line 136
    const-string/jumbo v2, "includesubdomains"

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 134
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const-string/jumbo v0, "UpdateMethod"

    new-array v1, v7, [Ljava/lang/Object;

    .line 138
    const-string/jumbo v2, "oma-dm-clientinitiated"

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    .line 139
    const-string/jumbo v2, "spp-clientinitiated"

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 137
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const-string/jumbo v0, "Restriction"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    const-string/jumbo v2, "homesp"

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->HomeSP:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v2, v1, v5

    .line 142
    const-string/jumbo v2, "roamingpartner"

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->RoamingPartner:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v2, v1, v3

    .line 143
    const-string/jumbo v2, "unrestricted"

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->Unrestricted:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 140
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "HomeSP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "FQDN"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->FQDNPath:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "ppsFile"    # Ljava/io/File;
    .param p2, "hs2enabled"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    .line 160
    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    .line 158
    return-void
.end method

.method private addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 7
    .param p1, "mo"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 294
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 296
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 297
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    if-eqz v4, :cond_3

    throw v4

    :catch_2
    move-exception v5

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_3

    :cond_2
    if-eq v4, v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v3

    .line 298
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    .line 292
    return-void

    .line 297
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    goto :goto_2

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private static buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 44
    .param p0, "credNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 727
    const-string/jumbo v5, "CreationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v6

    .line 728
    .local v6, "ctime":J
    const-string/jumbo v5, "ExpirationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v8

    .line 729
    .local v8, "expTime":J
    const-string/jumbo v5, "Realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v10

    .line 730
    .local v10, "realm":Ljava/lang/String;
    const-string/jumbo v5, "CheckAAAServerCertStatus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v11

    .line 732
    .local v11, "checkAAACert":Z
    const-string/jumbo v5, "UsernamePassword"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v41

    .line 733
    .local v41, "unNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "DigitalCertificate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v18

    .line 734
    .local v18, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v40

    .line 737
    .local v40, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v41, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v4, v5, 0x0

    .line 738
    .local v4, "alternatives":I
    if-eqz v18, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    .line 739
    if-eqz v40, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    .line 740
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 741
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Expected exactly one credential type, got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 737
    .end local v4    # "alternatives":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 738
    .restart local v4    # "alternatives":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 739
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 744
    :cond_3
    if-eqz v41, :cond_a

    .line 745
    const-string/jumbo v5, "Username"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v13

    .line 746
    .local v13, "userName":Ljava/lang/String;
    const-string/jumbo v5, "Password"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v14

    .line 747
    .local v14, "password":Ljava/lang/String;
    const-string/jumbo v5, "MachineManaged"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v15

    .line 748
    .local v15, "machineManaged":Z
    const-string/jumbo v5, "SoftTokenApp"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v16

    .line 749
    .local v16, "softTokenApp":Ljava/lang/String;
    const-string/jumbo v5, "AbleToShare"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v17

    .line 751
    .local v17, "ableToShare":Z
    const-string/jumbo v5, "EAPMethod"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v32

    .line 752
    .local v32, "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "EAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v30

    .line 754
    .local v30, "eapID":I
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v31

    .line 755
    .local v31, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v31, :cond_4

    .line 756
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 759
    :cond_4
    const-string/jumbo v5, "VendorId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v42

    .line 760
    .local v42, "vid":Ljava/lang/Long;
    const-string/jumbo v5, "VendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v43

    .line 761
    .local v43, "vtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerEAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v34

    .line 762
    .local v34, "innerEAPType":Ljava/lang/Long;
    const/16 v33, 0x0

    .line 763
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-eqz v34, :cond_5

    .line 764
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v33

    .line 765
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v33, :cond_5

    .line 766
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Bad inner EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 770
    .end local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    :cond_5
    const-string/jumbo v5, "InnerVendorID"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v36

    .line 771
    .local v36, "innerVid":Ljava/lang/Long;
    const-string/jumbo v5, "InnerVendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v37

    .line 772
    .local v37, "innerVtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerMethod"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v35

    .line 775
    .local v35, "innerNonEAPMethod":Ljava/lang/String;
    if-eqz v33, :cond_6

    .line 776
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 791
    .local v12, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :goto_3
    new-instance v5, Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-direct/range {v5 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-object v5

    .line 777
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_6
    if-eqz v42, :cond_7

    .line 778
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 779
    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    .line 780
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 779
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    .line 778
    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .line 781
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_7
    if-eqz v36, :cond_8

    .line 783
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    .line 784
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 783
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 782
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .line 785
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_8
    if-eqz v35, :cond_9

    .line 786
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .line 788
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_9
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v19, "Incomplete set of EAP parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 794
    .end local v13    # "userName":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "machineManaged":Z
    .end local v16    # "softTokenApp":Ljava/lang/String;
    .end local v17    # "ableToShare":Z
    .end local v30    # "eapID":I
    .end local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "innerEAPType":Ljava/lang/Long;
    .end local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .end local v36    # "innerVid":Ljava/lang/Long;
    .end local v37    # "innerVtype":Ljava/lang/Long;
    .end local v42    # "vid":Ljava/lang/Long;
    .end local v43    # "vtype":Ljava/lang/Long;
    :cond_a
    if-eqz v18, :cond_b

    .line 796
    :try_start_0
    const-string/jumbo v5, "CertificateType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v29

    .line 797
    .local v29, "certTypeString":Ljava/lang/String;
    const-string/jumbo v5, "CertSHA256Fingerprint"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B

    move-result-object v28

    .line 799
    .local v28, "fingerPrint":[B
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v5, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 801
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    .line 802
    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    move-result-object v27

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    .line 801
    invoke-direct/range {v19 .. v28}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v19

    .line 803
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v28    # "fingerPrint":[B
    .end local v29    # "certTypeString":Ljava/lang/String;
    :catch_0
    move-exception v39

    .line 804
    .local v39, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Bad hex string: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v39 .. v39}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 807
    .end local v39    # "nfe":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v40, :cond_c

    .line 809
    :try_start_1
    new-instance v27, Lcom/android/server/wifi/IMSIParameter;

    const-string/jumbo v5, "IMSI"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    .line 812
    .local v27, "imsi":Lcom/android/server/wifi/IMSIParameter;
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    const-string/jumbo v5, "EAPType"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v5

    .line 813
    const/16 v19, 0x0

    .line 812
    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 815
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v19 .. v27}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v19

    .line 816
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v27    # "imsi":Lcom/android/server/wifi/IMSIParameter;
    :catch_1
    move-exception v38

    .line 817
    .local v38, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to parse IMSI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 820
    .end local v38    # "ioe":Ljava/io/IOException;
    :cond_c
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v19, "Missing credential parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 40
    .param p0, "ppsRoot"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "updateIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 650
    const-string/jumbo v2, "HomeSP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v32

    .line 652
    .local v32, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "FQDN"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "fqdn":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "FriendlyName"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "IconURL"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v10

    .line 656
    .local v10, "iconURL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 657
    .local v5, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "RoamingConsortiumOI"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v29

    .line 658
    .local v29, "oiString":Ljava/lang/String;
    if-eqz v29, :cond_0

    .line 659
    const-string/jumbo v2, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    array-length v0, v13

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    aget-object v28, v13, v2

    .line 660
    .local v28, "oi":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x10

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v28    # "oi":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v3, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "NetworkID"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v33

    .line 667
    .local v33, "ssidListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v33, :cond_1

    .line 668
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, "ssidRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 669
    .local v34, "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HESSID"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    .line 670
    .local v23, "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "SSID"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 674
    .end local v23    # "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v35    # "ssidRoot$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 675
    .local v7, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v8, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "HomeOIList"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v25

    .line 677
    .local v25, "homeOIListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v25, :cond_3

    .line 678
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "homeOIRoot$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 679
    .local v26, "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HomeOI"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 680
    .local v24, "homeOI":Ljava/lang/String;
    const-string/jumbo v2, "HomeOIRequired"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    const/16 v2, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 683
    :cond_2
    const/16 v2, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 688
    .end local v24    # "homeOI":Ljava/lang/String;
    .end local v26    # "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v27    # "homeOIRoot$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 690
    .local v6, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "OtherHomePartners"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v30

    .line 691
    .local v30, "otherListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v30, :cond_4

    .line 692
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "fqdnNode$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 693
    .local v21, "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "FQDN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 697
    .end local v21    # "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v22    # "fqdnNode$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v2, "Credential"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v11

    .line 699
    .local v11, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    const-string/jumbo v2, "Policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v31

    .line 700
    .local v31, "policyNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v31, :cond_6

    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy;

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Lcom/android/server/wifi/hotspot2/pps/Policy;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 703
    :goto_4
    const-string/jumbo v2, "AAAServerTrustRoot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v18

    .line 704
    .local v18, "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v18, :cond_7

    .line 705
    const/4 v14, 0x0

    .line 714
    :cond_5
    const-string/jumbo v2, "SubscriptionUpdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v37

    .line 715
    .local v37, "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v37, :cond_8

    new-instance v15, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    move-object/from16 v0, v37

    invoke-direct {v15, v0}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 716
    :goto_5
    const-string/jumbo v2, "SubscriptionParameters"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v36

    .line 717
    .local v36, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v36, :cond_9

    .line 718
    new-instance v16, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 720
    :goto_6
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 722
    const-string/jumbo v13, "CredentialPriority"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v13

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)I

    move-result v13

    move/from16 v17, p1

    .line 720
    invoke-direct/range {v2 .. v17}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;Lcom/android/server/wifi/hotspot2/pps/Policy;ILjava/util/Map;Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;I)V

    return-object v2

    .line 700
    .end local v18    # "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v36    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v37    # "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    const/4 v12, 0x0

    .local v12, "policy":Lcom/android/server/wifi/hotspot2/pps/Policy;
    goto :goto_4

    .line 707
    .end local v12    # "policy":Lcom/android/server/wifi/hotspot2/pps/Policy;
    .restart local v18    # "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_7
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 708
    .local v14, "aaaTrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "child$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 709
    .local v19, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "CertURL"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    const-string/jumbo v13, "CertSHA256Fingerprint"

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 709
    invoke-interface {v14, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 715
    .end local v14    # "aaaTrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v20    # "child$iterator":Ljava/util/Iterator;
    .restart local v37    # "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_8
    const/4 v15, 0x0

    .local v15, "subscriptionUpdate":Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    goto :goto_5

    .line 718
    .end local v15    # "subscriptionUpdate":Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .restart local v36    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_9
    const/16 v16, 0x0

    .local v16, "subscriptionParameters":Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
    goto :goto_6
.end method

.method private static buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 32
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "instanceID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 470
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 469
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v24

    .line 473
    .local v24, "providerSubNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "HomeSP"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    .line 474
    .local v15, "homeSpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_1

    .line 476
    const-string/jumbo v27, "NetworkID"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v20

    check-cast v20, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 477
    .local v20, "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .line 478
    .local v17, "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 480
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .local v18, "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 481
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 480
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 482
    .local v16, "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v28, "SSID"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 483
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 484
    const-string/jumbo v27, "HESSID"

    .line 485
    const-string/jumbo v28, "%012x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 484
    const/16 v29, 0x0

    .line 485
    const/16 v30, 0x0

    .line 484
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_0
    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_0

    .line 490
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v20    # "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string/jumbo v27, "FriendlyName"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2

    .line 493
    const-string/jumbo v27, "IconURL"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 496
    :cond_2
    const-string/jumbo v27, "FQDN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 519
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_6

    .line 521
    const-string/jumbo v27, "OtherHomePartners"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    check-cast v23, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 522
    .local v23, "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .line 523
    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "fqdn$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 525
    .local v12, "fqdn":Ljava/lang/String;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 526
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 525
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 527
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "FQDN"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_1

    .line 500
    .end local v12    # "fqdn":Ljava/lang/String;
    .end local v13    # "fqdn$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v23    # "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_4
    const-string/jumbo v27, "HomeOIList"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    check-cast v14, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 502
    .local v14, "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .line 503
    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "oi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 505
    .local v21, "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 506
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 505
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 507
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "HomeOI"

    const-string/jumbo v28, "%x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v21, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 508
    const-string/jumbo v27, "HomeOIRequired"

    const-string/jumbo v28, "TRUE"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_2

    .line 510
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v21    # "oi":Ljava/lang/Long;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 512
    .restart local v21    # "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 513
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 512
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 514
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "HomeOI"

    const-string/jumbo v28, "%x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v21, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 515
    const-string/jumbo v27, "HomeOIRequired"

    const-string/jumbo v28, "FALSE"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_3

    .line 531
    .end local v14    # "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v21    # "oi":Ljava/lang/Long;
    .end local v22    # "oi$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_7

    .line 532
    const-string/jumbo v27, "RoamingConsortiumOI"

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getRCList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v28

    .line 532
    const/16 v29, 0x0

    .line 533
    const/16 v30, 0x0

    .line 532
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 537
    :cond_7
    const-string/jumbo v27, "Credential"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v8

    .line 538
    .local v8, "credentialNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v7

    .line 539
    .local v7, "cred":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v19

    .line 541
    .local v19, "method":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_8

    .line 542
    const-string/jumbo v27, "CreationDate"

    .line 543
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v29, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v30

    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 542
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 545
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_9

    .line 546
    const-string/jumbo v27, "ExpirationDate"

    .line 547
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v29, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v30

    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 546
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 550
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 551
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 554
    :cond_a
    const-string/jumbo v27, "SIM"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v25

    .line 555
    .local v25, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "IMSI"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 556
    const-string/jumbo v27, "EAPType"

    .line 557
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    .line 556
    const/16 v29, 0x0

    .line 557
    const/16 v30, 0x0

    .line 556
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 583
    .end local v25    # "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_4
    const-string/jumbo v27, "Realm"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 588
    return-object v24

    .line 552
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 559
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 561
    const-string/jumbo v27, "UsernamePassword"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v26

    .line 562
    .local v26, "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "Username"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 563
    const-string/jumbo v27, "Password"

    .line 564
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v28

    .line 565
    const/16 v29, 0x0

    .line 564
    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v28

    .line 563
    const/16 v29, 0x0

    .line 565
    const/16 v30, 0x0

    .line 563
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 566
    const-string/jumbo v27, "EAPMethod"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v9

    .line 567
    .local v9, "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "EAPType"

    .line 568
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    .line 567
    const/16 v29, 0x0

    .line 568
    const/16 v30, 0x0

    .line 567
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 569
    const-string/jumbo v28, "InnerMethod"

    .line 570
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v27

    check-cast v27, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getOMAtype()Ljava/lang/String;

    move-result-object v27

    .line 569
    const/16 v29, 0x0

    .line 570
    const/16 v30, 0x0

    .line 569
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .line 572
    .end local v9    # "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v26    # "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 574
    const-string/jumbo v27, "DigitalCertificate"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v6

    .line 575
    .local v6, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "CertificateType"

    const-string/jumbo v28, "x509v3"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 576
    const-string/jumbo v27, "CertSHA256Fingerprint"

    .line 577
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v28

    .line 576
    const/16 v29, 0x0

    .line 577
    const/16 v30, 0x0

    .line 576
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .line 580
    .end local v6    # "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_d
    new-instance v27, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Invalid credential on "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v27
.end method

.method private static buildMoTree(Landroid/net/wifi/PasspointManagementObjectDefinition;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 3
    .param p0, "managementObjectDefinition"    # Landroid/net/wifi/PasspointManagementObjectDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 390
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    invoke-virtual {p0}, Landroid/net/wifi/PasspointManagementObjectDefinition;->getMoTree()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v1

    return-object v1
.end method

.method public static buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 211
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 212
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 214
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected exactly one HomeSP, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v3
.end method

.method private static buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;
    .locals 13
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 611
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v2, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "PerProviderSubscription"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 614
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v8

    .line 616
    .local v8, "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v8, :cond_0

    .line 617
    return-object v2

    .line 620
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "node$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 621
    .local v4, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v10

    if-nez v10, :cond_1

    .line 622
    invoke-static {v4, v11}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    .end local v4    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "node$iterator":Ljava/util/Iterator;
    .end local v8    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ppsRoot$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 627
    .local v6, "ppsRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "PerProviderSubscription"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 628
    const/4 v9, 0x0

    .line 629
    .local v9, "updateIdentifier":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 630
    .local v3, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v9    # "updateIdentifier":Ljava/lang/Integer;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 631
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "UpdateIdentifier"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 632
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "updateIdentifier":Ljava/lang/Integer;
    goto :goto_2

    .line 633
    .end local v9    # "updateIdentifier":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v10

    if-nez v10, :cond_4

    .line 634
    move-object v3, v0

    .local v3, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_2

    .line 637
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v3    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    if-nez v3, :cond_7

    .line 638
    new-instance v10, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v11, "PPS node missing instance node"

    invoke-direct {v10, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 641
    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 640
    :goto_3
    invoke-static {v3, v10}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move v10, v11

    .line 641
    goto :goto_3

    .line 646
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v6    # "ppsRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v7    # "ppsRoot$iterator":Ljava/util/Iterator;
    :cond_9
    return-object v2
.end method

.method private static findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 8
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v4

    .line 303
    .local v4, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 304
    .local v1, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v0, 0x0

    .line 305
    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PerProviderSubscription"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 306
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v0

    .line 310
    .end local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 311
    sget-object v5, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->FQDNPath:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "nodeFqdn":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v1

    .line 307
    .end local v3    # "nodeFqdn":Ljava/lang/String;
    .restart local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v5

    if-nez v5, :cond_1

    .line 308
    move-object v0, v1

    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    .line 318
    .end local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_3
    return-object v7
.end method

.method private static getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z
    .locals 1
    .param p0, "boolNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    .line 889
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 825
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    .line 826
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_0
    return-object v0
.end method

.method private static getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 4
    .param p0, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 323
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v0

    .line 327
    :cond_1
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v3, "Cannot find instance node"

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getInstanceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # I

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r1i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 904
    if-nez p0, :cond_0

    .line 905
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v2, "Missing integer value"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)I
    .locals 1
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "dflt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 897
    if-nez p0, :cond_0

    .line 898
    return p1

    .line 900
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v0

    return v0
.end method

.method public static getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J
    .locals 8
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 843
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    .line 844
    if-eqz p2, :cond_0

    .line 845
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6

    .line 847
    :cond_0
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 850
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v5

    if-nez v5, :cond_2

    .line 851
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a leaf node"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 853
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 856
    .local v2, "result":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 857
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Negative value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v2    # "result":J
    :catch_0
    move-exception v1

    .line 861
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is non-numeric: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 859
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "result":J
    :cond_3
    return-wide v2
.end method

.method private static getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "macNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 915
    if-nez p0, :cond_0

    .line 916
    return-object v1

    .line 919
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B
    .locals 2
    .param p0, "octetNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 950
    if-nez p0, :cond_0

    .line 951
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v1, "Missing byte value"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 926
    if-nez p0, :cond_0

    .line 927
    return-object v1

    .line 930
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getRCList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "rcs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 598
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "roamingConsortium$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 599
    .local v2, "roamingConsortium":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 600
    const/4 v1, 0x0

    .line 604
    :goto_1
    const-string/jumbo v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 602
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 606
    .end local v2    # "roamingConsortium":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 868
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    .line 869
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 870
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 871
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a leaf node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 873
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 877
    if-nez p1, :cond_0

    .line 878
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 880
    :cond_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 881
    .local v0, "kvp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 882
    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 883
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_1
    return-object v1
.end method

.method public static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;
    .locals 1
    .param p0, "stringNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    const/4 v0, 0x0

    .line 893
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 833
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    .line 834
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a leaf node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 6
    .param p0, "pathString"    # Ljava/lang/String;
    .param p1, "rootName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "path":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "pathIndex":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 398
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    add-int/lit8 v1, v1, 0x1

    .line 403
    :cond_0
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 404
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad node-path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 397
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 407
    .local v2, "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 408
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    :cond_3
    return-object v2
.end method

.method public static getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J
    .locals 6
    .param p0, "timeNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 937
    if-nez p0, :cond_0

    .line 938
    const-wide/16 v4, -0x1

    return-wide v4

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "timeText":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 943
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 944
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 945
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Badly formatted time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static varargs setSelections(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pairs"    # [Ljava/lang/Object;

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v0, "kvp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 150
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private static writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V
    .locals 6
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 462
    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    .line 463
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 464
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    if-eqz v3, :cond_3

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_3

    :cond_2
    if-eq v3, v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v2

    .line 459
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :cond_4
    return-void

    .line 464
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v0, "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public addSP(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 9
    .param p1, "instanceTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v4

    .line 261
    .local v4, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 262
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected exactly one HomeSP, got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 266
    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "fqdn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 268
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " already exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v6

    .line 272
    const-string/jumbo v7, "PerProviderSubscription"

    .line 271
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 275
    .local v2, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-object v3

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getUrn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getDtdRev()Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v8

    .line 277
    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .line 279
    .local v5, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    goto :goto_0
.end method

.method public addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 221
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v1, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v1

    return-object v1
.end method

.method public addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 7
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    if-nez v3, :cond_0

    .line 234
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "HS2.0 not enabled on this device"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v3

    .line 240
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v4

    .line 239
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/IMSIParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 236
    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HS20 profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 242
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 242
    const-string/jumbo v5, " already exists"

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding or updating HS20 profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string/jumbo v3, "PerProviderSubscription"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v0, v6, v3, v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    .local v0, "dummyRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 250
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    .line 253
    const-string/jumbo v4, "1.2"

    .line 252
    invoke-static {v3, v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 254
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    goto :goto_0
.end method

.method public getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v0
.end method

.method public getLoadedSPs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMOTree(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 443
    if-nez p1, :cond_0

    .line 444
    return-object v7

    .line 446
    :cond_0
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v3

    .line 448
    .local v3, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v3, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 449
    .local v4, "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v4, :cond_3

    .line 456
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v5, v7

    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 454
    :catch_0
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .line 455
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_1
    return-object v7

    .line 456
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 450
    :cond_2
    return-object v7

    .line 452
    :cond_3
    :try_start_4
    const-string/jumbo v5, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    .line 453
    const-string/jumbo v6, "1.2"

    .line 452
    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->toXml()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .line 456
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v5, v7

    :goto_2
    if-eqz v5, :cond_5

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v5

    goto :goto_2

    .line 452
    :cond_5
    return-object v6

    .line 456
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_4
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_5
    if-eqz v6, :cond_8

    :try_start_9
    throw v6

    .line 454
    :catch_4
    move-exception v0

    .restart local v0    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 456
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    if-nez v6, :cond_7

    move-object v6, v8

    goto :goto_5

    :cond_7
    if-eq v6, v8, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    throw v5
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    move-object v6, v7

    goto :goto_4

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v5

    move-object v6, v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public isConfigured()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    return v0
.end method

.method public loadAllSPs()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 178
    iget-boolean v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 183
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    :try_start_2
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 191
    .local v3, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_start_3
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-eqz v6, :cond_8

    .line 193
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 194
    .local v4, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 195
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Multiple SPs for FQDN \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_2
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_0
    :goto_3
    if-eqz v8, :cond_a

    throw v8

    .line 179
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 187
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v7

    .line 206
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_4
    if-eqz v8, :cond_3

    throw v8

    :catch_2
    move-exception v8

    goto :goto_4

    .line 188
    :cond_3
    return-object v7

    .line 197
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v5    # "sp$iterator":Ljava/util/Iterator;
    .restart local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_4
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieved "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " from PPS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 206
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v5    # "sp$iterator":Ljava/util/Iterator;
    .restart local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_5
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :cond_6
    :goto_5
    if-eqz v8, :cond_7

    throw v8

    :catch_3
    move-exception v8

    goto :goto_5

    .line 201
    :cond_7
    return-object v6

    .line 204
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    :cond_8
    :try_start_a
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v9, "Failed to build HomeSP"

    invoke-direct {v7, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 206
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_4
    move-exception v9

    if-nez v8, :cond_9

    move-object v8, v9

    goto :goto_3

    :cond_9
    if-eq v8, v9, :cond_0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    throw v7

    .local v1, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method public modifySP(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 22
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "mods":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "modifying SP: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v13, 0x0

    .line 337
    .local v13, "ppsMods":I
    const/16 v18, 0x0

    const/4 v3, 0x0

    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 338
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v6

    .line 341
    .local v6, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v15

    .line 342
    .local v15, "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v15, :cond_1

    .line 343
    new-instance v17, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to find PPS tree for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v17

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v18

    move-object/from16 v21, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v21

    :goto_1
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    if-eqz v18, :cond_a

    throw v18

    .line 345
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    :try_start_4
    invoke-static {v15}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    .line 347
    .local v5, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "mod$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/PasspointManagementObjectDefinition;

    .line 348
    .local v7, "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    invoke-virtual {v7}, Landroid/net/wifi/PasspointManagementObjectDefinition;->getBaseUri()Ljava/lang/String;

    move-result-object v17

    .line 349
    const-string/jumbo v19, "PerProviderSubscription"

    .line 348
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v14

    .line 350
    .local v14, "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildMoTree(Landroid/net/wifi/PasspointManagementObjectDefinition;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v9

    .line 354
    .local v9, "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v19, "UpdateIdentifier"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 355
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v16

    .line 356
    .local v16, "updateIdentifier":I
    const-string/jumbo v17, "UpdateIdentifier"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v12

    .line 357
    .local v12, "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 358
    add-int/lit8 v13, v13, 0x1

    .line 360
    :cond_3
    if-eqz v12, :cond_4

    .line 361
    const-string/jumbo v17, "UpdateIdentifier"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v12, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto :goto_3

    .line 379
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "updateIdentifier":I
    :catchall_1
    move-exception v17

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 363
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .restart local v8    # "mod$iterator":Ljava/util/Iterator;
    .restart local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v16    # "updateIdentifier":I
    :cond_4
    const-string/jumbo v17, "UpdateIdentifier"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    goto :goto_3

    .line 366
    .end local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v16    # "updateIdentifier":I
    :cond_5
    invoke-virtual {v14}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 367
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    .line 368
    .local v2, "current":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v2, :cond_6

    .line 369
    new-instance v17, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "No previous node for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 371
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "newNode$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 374
    .local v10, "newNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 379
    .end local v2    # "current":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .end local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v10    # "newNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v11    # "newNode$iterator":Ljava/util/Iterator;
    .end local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v4, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_5
    if-eqz v18, :cond_b

    throw v18

    :catch_1
    move-exception v18

    goto :goto_5

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_2
    move-exception v19

    if-nez v18, :cond_9

    move-object/from16 v18, v19

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_a
    throw v17

    .line 380
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v8    # "mod$iterator":Ljava/util/Iterator;
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    .line 382
    return v13

    .line 379
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v17

    goto/16 :goto_1

    :catch_3
    move-exception v17

    goto/16 :goto_0
.end method

.method public removeSP(Ljava/lang/String;)V
    .locals 11
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 419
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No HS20 profile to delete for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleting HS20 profile for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 428
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 429
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    .line 430
    .local v5, "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v5, :cond_2

    .line 431
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Node "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " doesn\'t exist in MO tree"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v7, :cond_6

    throw v7

    .line 433
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v3

    .line 434
    .local v3, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->removeNode(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v4

    .line 435
    .local v4, "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v4, :cond_3

    .line 436
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to remove "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " out of MO tree"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 438
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    if-eqz v7, :cond_7

    throw v7

    :catch_1
    move-exception v7

    goto :goto_3

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_2
    move-exception v8

    if-nez v7, :cond_5

    move-object v7, v8

    goto :goto_2

    :cond_5
    if-eq v7, v8, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    throw v6

    .line 439
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v2, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    .line 418
    return-void

    .line 438
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .local v0, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_0
.end method

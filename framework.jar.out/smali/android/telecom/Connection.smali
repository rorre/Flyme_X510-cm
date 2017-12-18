.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$1;,
        Landroid/telecom/Connection$2;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_UNUSED_2:I = 0x4000

.field public static final CAPABILITY_UNUSED_3:I = 0x8000

.field public static final CAPABILITY_UNUSED_4:I = 0x10000

.field public static final CAPABILITY_UNUSED_5:I = 0x20000

.field public static final CAPABILITY_VOICE_PRIVACY:I = 0x2000000

.field public static final EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field private static final PII_DEBUG:Z

.field public static final PROPERTY_ADDITIONAL_CALL_FORWARDED:I = 0x400

.field public static final PROPERTY_DIALING_IS_WAITING:I = 0x200

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final PROPERTY_HELD_REMOTELY:I = 0x100

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final PROPERTY_REMOTE_INCOMING_CALLS_BARRED:I = 0x800

.field public static final PROPERTY_WAS_FORWARDED:I = 0x80

.field public static final PROPERTY_WIFI:I = 0x8

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_PULLING_CALL:I = 0x7

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionProperties:I

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mSupportedAudioRoutes:I

.field private mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Connection;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1550
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 1488
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 1497
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 1512
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1511
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 1513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 1515
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1514
    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 1519
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1528
    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 1531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 1538
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    .line 1550
    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 572
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    if-eqz p1, :cond_0

    .line 632
    const-string/jumbo v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    if-eqz p1, :cond_15

    const-string/jumbo v1, " CAPABILITY_HOLD"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    if-eqz p1, :cond_16

    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    if-eqz p1, :cond_17

    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_3
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 645
    if-eqz p1, :cond_18

    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_4
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 648
    if-eqz p1, :cond_19

    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_5
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 651
    if-eqz p1, :cond_1a

    const-string/jumbo v1, " CAPABILITY_MUTE"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 654
    if-eqz p1, :cond_1b

    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    :cond_7
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 657
    if-eqz p1, :cond_1c

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_8
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 660
    if-eqz p1, :cond_1d

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_9
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 663
    if-eqz p1, :cond_1e

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_a
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 666
    if-eqz p1, :cond_1f

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :cond_b
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 669
    if-eqz p1, :cond_20

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_c
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 672
    if-eqz p1, :cond_21

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_d
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 675
    if-eqz p1, :cond_22

    const-string/jumbo v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_e
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 678
    if-eqz p1, :cond_23

    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_f
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 681
    if-eqz p1, :cond_24

    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_10
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 684
    if-eqz p1, :cond_25

    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_11
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 687
    if-eqz p1, :cond_26

    const-string/jumbo v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_12
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 690
    if-eqz p1, :cond_27

    const-string/jumbo v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_13
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 693
    if-eqz p1, :cond_28

    const-string/jumbo v1, " CAPABILITY_CAN_PULL_CALL"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_14
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 636
    :cond_15
    const-string/jumbo v1, " hld"

    goto/16 :goto_0

    .line 639
    :cond_16
    const-string/jumbo v1, " sup_hld"

    goto/16 :goto_1

    .line 642
    :cond_17
    const-string/jumbo v1, " mrg_cnf"

    goto/16 :goto_2

    .line 645
    :cond_18
    const-string/jumbo v1, " swp_cnf"

    goto/16 :goto_3

    .line 648
    :cond_19
    const-string/jumbo v1, " txt"

    goto/16 :goto_4

    .line 651
    :cond_1a
    const-string/jumbo v1, " mut"

    goto/16 :goto_5

    .line 654
    :cond_1b
    const-string/jumbo v1, " mng_cnf"

    goto/16 :goto_6

    .line 657
    :cond_1c
    const-string/jumbo v1, " VTlrx"

    goto/16 :goto_7

    .line 660
    :cond_1d
    const-string/jumbo v1, " VTltx"

    goto/16 :goto_8

    .line 663
    :cond_1e
    const-string/jumbo v1, " VTlbi"

    goto/16 :goto_9

    .line 666
    :cond_1f
    const-string/jumbo v1, " VTrrx"

    goto/16 :goto_a

    .line 669
    :cond_20
    const-string/jumbo v1, " VTrtx"

    goto/16 :goto_b

    .line 672
    :cond_21
    const-string/jumbo v1, " VTrbi"

    goto/16 :goto_c

    .line 675
    :cond_22
    const-string/jumbo v1, " !v2a"

    goto/16 :goto_d

    .line 678
    :cond_23
    const-string/jumbo v1, " spd_aud"

    goto/16 :goto_e

    .line 681
    :cond_24
    const-string/jumbo v1, " a2v"

    goto/16 :goto_f

    .line 684
    :cond_25
    const-string/jumbo v1, " paus_VT"

    goto/16 :goto_10

    .line 687
    :cond_26
    const-string/jumbo v1, " 1p_cnf"

    goto/16 :goto_11

    .line 690
    :cond_27
    const-string/jumbo v1, " rsp_by_con"

    goto :goto_12

    .line 693
    :cond_28
    const-string/jumbo v1, " pull"

    goto :goto_13
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final clearConferenceableList()V
    .locals 5

    .prologue
    .line 2628
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 2629
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 2630
    check-cast v3, Landroid/telecom/Connection;

    .line 2631
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 2632
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2633
    check-cast v2, Landroid/telecom/Conference;

    .line 2634
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0

    .line 2637
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2627
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    .prologue
    .line 2612
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 2588
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    .prologue
    .line 2622
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2623
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    .line 2621
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 2616
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2617
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 2615
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    .prologue
    .line 707
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .prologue
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    if-eqz p1, :cond_0

    .line 725
    const-string/jumbo v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    if-eqz p1, :cond_c

    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    if-eqz p1, :cond_d

    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    if-eqz p1, :cond_e

    const-string/jumbo v1, " PROPERTY_WIFI"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_3
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 741
    if-eqz p1, :cond_f

    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_4
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 745
    if-eqz p1, :cond_10

    const-string/jumbo v1, " PROPERTY_IS_EXTERNAL_CALL"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_5
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 749
    if-eqz p1, :cond_11

    const-string/jumbo v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 753
    const-string/jumbo v1, " PROPERTY_WAS_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_7
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 757
    const-string/jumbo v1, " PROPERTY_HELD_REMOTELY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_8
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 761
    const-string/jumbo v1, " PROPERTY_DIALING_IS_WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_9
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 765
    const-string/jumbo v1, " PROPERTY_ADDITIONAL_CALL_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_a
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 769
    const-string/jumbo v1, " PROPERTY_REMOTE_INCOMING_CALLS_BARRED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_b
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 729
    :cond_c
    const-string/jumbo v1, " ecbm"

    goto/16 :goto_0

    .line 733
    :cond_d
    const-string/jumbo v1, " HD"

    goto/16 :goto_1

    .line 737
    :cond_e
    const-string/jumbo v1, " wifi"

    goto/16 :goto_2

    .line 741
    :cond_f
    const-string/jumbo v1, " gen_conf"

    goto/16 :goto_3

    .line 745
    :cond_10
    const-string/jumbo v1, " xtrnl"

    goto :goto_4

    .line 749
    :cond_11
    const-string/jumbo v1, " priv"

    goto :goto_5
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    .prologue
    .line 718
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 2547
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2548
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_0

    .line 2549
    const-string/jumbo v2, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2550
    return-void

    .line 2552
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_1

    .line 2553
    const-string/jumbo v2, "setState: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2554
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 2555
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 2556
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2557
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2546
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    .prologue
    .line 1771
    packed-switch p0, :pswitch_data_0

    .line 1789
    const-class v0, Landroid/telecom/Connection;

    const-string/jumbo v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1790
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1773
    :pswitch_0
    const-string/jumbo v0, "INITIALIZING"

    return-object v0

    .line 1775
    :pswitch_1
    const-string/jumbo v0, "NEW"

    return-object v0

    .line 1777
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    return-object v0

    .line 1779
    :pswitch_3
    const-string/jumbo v0, "DIALING"

    return-object v0

    .line 1781
    :pswitch_4
    const-string/jumbo v0, "PULLING_CALL"

    return-object v0

    .line 1783
    :pswitch_5
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 1785
    :pswitch_6
    const-string/jumbo v0, "HOLDING"

    return-object v0

    .line 1787
    :pswitch_7
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    .line 1771
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2523
    if-nez p0, :cond_0

    .line 2524
    const-string/jumbo v3, ""

    return-object v3

    .line 2527
    :cond_0
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v3, :cond_1

    .line 2529
    return-object p0

    .line 2534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2535
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2536
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2537
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x40

    if-ne v1, v3, :cond_3

    .line 2538
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2535
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2537
    :cond_3
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_2

    .line 2540
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2543
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 603
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 602
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1715
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1716
    return-object p0
.end method

.method public addProperty(I)V
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 804
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    .line 803
    return-void
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 583
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .locals 0

    .prologue
    .line 2598
    return-void
.end method

.method public final destroy()V
    .locals 3

    .prologue
    .line 2064
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2065
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 2063
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1624
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_0

    .line 1625
    return-object v1

    .line 1627
    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 1590
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2155
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 1798
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    .prologue
    .line 1805
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    .prologue
    .line 2187
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1699
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1700
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1703
    return-object v0

    .line 1698
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getSupportedAudioRoutes()I
    .locals 1

    .prologue
    .line 1814
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2647
    const/4 v0, 0x0

    .line 2648
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2649
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 2650
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2651
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2654
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 2646
    return-void

    .line 2648
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 784
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public final isRingbackRequested()Z
    .locals 1

    .prologue
    .line 1652
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 2663
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2664
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 2662
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    .prologue
    .line 2686
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2687
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_0

    .line 2685
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceSupportedChanged(Z)V
    .locals 3
    .param p1, "isConferenceSupported"    # Z

    .prologue
    .line 2699
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2700
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 2698
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    .prologue
    .line 2426
    return-void
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 2451
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 2450
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 2444
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2375
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 2382
    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2507
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 2407
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 2416
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2519
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 2431
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 2397
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 2476
    return-void
.end method

.method public onPullExternalCall()V
    .locals 0

    .prologue
    .line 2489
    return-void
.end method

.method public onReject()V
    .locals 0

    .prologue
    .line 2458
    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyMessage"    # Ljava/lang/String;

    .prologue
    .line 2464
    return-void
.end method

.method public onSeparate()V
    .locals 0

    .prologue
    .line 2421
    return-void
.end method

.method public onSilence()V
    .locals 0

    .prologue
    .line 2471
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2390
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 2402
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 2436
    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2321
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2322
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2319
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2334
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2332
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2308
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2309
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2306
    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2278
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2279
    if-nez p1, :cond_0

    .line 2280
    return-void

    .line 2285
    :cond_0
    iget-object v4, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2286
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 2287
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 2289
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2290
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "listenerExtras":Landroid/os/Bundle;
    monitor-exit v4

    .line 2292
    iget-object v3, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2295
    .local v0, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2285
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "listenerExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2277
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    .restart local v2    # "listenerExtras":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 593
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 592
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1728
    if-eqz p1, :cond_0

    .line 1729
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1731
    :cond_0
    return-object p0
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2344
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2345
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 2346
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2347
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2344
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    monitor-exit v6

    .line 2351
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2352
    .local v4, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 2353
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v4}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_1

    .line 2343
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    :cond_1
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 2363
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 2362
    return-void
.end method

.method public removeProperty(I)V
    .locals 2
    .param p1, "property"    # I

    .prologue
    .line 794
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    .line 793
    return-void
.end method

.method public final resetConference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2216
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    .line 2217
    const-string/jumbo v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2218
    iput-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 2219
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 2215
    :cond_0
    return-void
.end method

.method public sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2742
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2743
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2741
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 1874
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 1876
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1873
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1825
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1826
    const-string/jumbo v2, "setAddress %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 1828
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 1829
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1830
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1824
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 2075
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2076
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 2077
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2078
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 2074
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 1759
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1760
    const-string/jumbo v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1761
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 1762
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 1763
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 1758
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1842
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1843
    const-string/jumbo v2, "setCallerDisplayName %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1844
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 1845
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 1846
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1847
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_0

    .line 1841
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 2199
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2201
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    .line 2202
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 2203
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 2206
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2208
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2113
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2114
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2115
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 2118
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2119
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2120
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2123
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2112
    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2133
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2134
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 2137
    .local v0, "c":Landroid/telecom/Conferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2138
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 2139
    check-cast v3, Landroid/telecom/Connection;

    .line 2140
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2145
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2141
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 2142
    check-cast v2, Landroid/telecom/Conference;

    .line 2143
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 2148
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2132
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J

    .prologue
    .line 2091
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2090
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 2014
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2015
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_0

    .line 2016
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 2017
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2018
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2013
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionProperties(I)V
    .locals 3
    .param p1, "connectionProperties"    # I

    .prologue
    .line 2029
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2030
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v2, p1, :cond_0

    .line 2031
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    .line 2032
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2033
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2028
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 2162
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2163
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    .line 2164
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2161
    :goto_0
    return-void

    .line 2167
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 1907
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1908
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1906
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1952
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1953
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1954
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    .line 1955
    const-string/jumbo v2, "Disconnected with cause %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1956
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1957
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 1951
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2238
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2241
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2245
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 2246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2247
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oldKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2248
    .local v0, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2249
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2252
    .end local v0    # "oldKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2253
    invoke-virtual {p0, v2}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 2259
    .end local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v3, :cond_4

    .line 2260
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    .line 2262
    :cond_4
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2263
    if-eqz p1, :cond_5

    .line 2264
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2237
    :cond_5
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1898
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1890
    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    .line 1986
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1987
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1988
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    .line 1985
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 1925
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1926
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1924
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1972
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1973
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1974
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1971
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setPulling()V
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1918
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1916
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 1999
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2000
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 2001
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2002
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2003
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1998
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    .prologue
    .line 1883
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1884
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1882
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 2100
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2101
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 2102
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2103
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 2099
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setSupportedAudioRoutes(I)V
    .locals 4
    .param p1, "supportedAudioRoutes"    # I

    .prologue
    .line 2046
    and-int/lit8 v2, p1, 0x9

    if-nez v2, :cond_0

    .line 2048
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 2049
    const-string/jumbo v3, "supported audio routes must include either speaker or earpiece"

    .line 2048
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2052
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v2, p1, :cond_1

    .line 2053
    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2054
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2055
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2045
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1749
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 1748
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 1934
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1935
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1936
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1937
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 1933
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .prologue
    .line 1861
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1862
    const-string/jumbo v2, "setVideoState %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1863
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 1864
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1865
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1860
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 2175
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    .line 2176
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2174
    :goto_0
    return-void

    .line 2179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2676
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2677
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 2675
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 225
    const-string/jumbo v12, "[Receiver]+"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "action":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Action: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 230
    const-string/jumbo v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "simStatus":Ljava/lang/String;
    const-string/jumbo v12, "slot"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 232
    .local v10, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "slotId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " simStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " sMajorSim:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v12, "IMSI"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set12(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 236
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 237
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get21()[Lcom/android/internal/telephony/Phone;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    aput-object v13, v12, v10

    .line 243
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v12

    aget-object v12, v12, v10

    if-eqz v12, :cond_3

    .line 244
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    .line 249
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13, v10}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap2(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I

    move-result v13

    aput v13, v12, v10

    .line 250
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sImsi["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v12

    if-ne v10, v12, :cond_9

    .line 254
    const-string/jumbo v12, "Major SIM"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 255
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set13(I)I

    .line 256
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v12

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_0

    .line 257
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    .line 258
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get31()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 259
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get23()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 260
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v13, 0x65

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 270
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()[Z

    move-result-object v12

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_1

    .line 271
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    .line 272
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IMSI fot slot"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " now ready, resuming PLMN:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 274
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 273
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 274
    const-string/jumbo v13, " with ID:"

    .line 273
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 274
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get27()[I

    move-result-object v13

    aget v13, v13, v10

    .line 273
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 275
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12, v10}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap10(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 501
    .end local v9    # "simStatus":Ljava/lang/String;
    .end local v10    # "slotId":I
    :cond_1
    :goto_1
    const-string/jumbo v12, "[Receiver]-"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 224
    return-void

    .line 240
    .restart local v9    # "simStatus":Ljava/lang/String;
    .restart local v10    # "slotId":I
    :cond_2
    const-string/jumbo v12, "Null sUiccController"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 241
    return-void

    .line 246
    :cond_3
    const-string/jumbo v12, "Null sIccRecordsInstance"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 247
    return-void

    .line 261
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get23()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 262
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v13, 0x64

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto :goto_0

    .line 264
    :cond_5
    const-string/jumbo v12, "Region unknown"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get31()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get31()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 267
    :cond_7
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v13, 0x64

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto/16 :goto_0

    .line 277
    :cond_8
    const-string/jumbo v12, "sNwPlmnStrings is Null"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_9
    const-string/jumbo v12, "Not major SIM or in maual selection mode"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 282
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()[Z

    move-result-object v12

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_1

    .line 284
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    .line 285
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IMSI fot slot"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " now ready, resuming with ID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 286
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get27()[I

    move-result-object v13

    aget v13, v13, v10

    .line 285
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get27()[I

    move-result-object v13

    aget v13, v13, v10

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 290
    :cond_a
    const-string/jumbo v12, "ABSENT"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 291
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ""

    aput-object v13, v12, v10

    .line 293
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v12

    const/4 v13, 0x1

    aput-boolean v13, v12, v10

    .line 296
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    .line 297
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v12

    const/4 v13, 0x0

    aput v13, v12, v10

    .line 298
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v12

    if-ne v10, v12, :cond_b

    .line 299
    const-string/jumbo v12, "Major SIM removed, no world phone service"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 300
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 301
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set13(I)I

    .line 302
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set2(I)I

    .line 303
    const/16 v12, -0x63

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    goto/16 :goto_1

    .line 305
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SIM"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is not major SIM"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 308
    :cond_c
    const-string/jumbo v12, "READY"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 309
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reset sIsInvalidSim by solt:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    goto/16 :goto_1

    .line 312
    .end local v9    # "simStatus":Ljava/lang/String;
    .end local v10    # "slotId":I
    :cond_d
    const-string/jumbo v12, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set10(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 315
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 316
    const-string/jumbo v12, "slot"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 317
    .restart local v10    # "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set6(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set14(I)I

    .line 320
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set9(I)I

    .line 321
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set1(I)I

    .line 323
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set8(I)I

    .line 324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "slotId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v13

    aget v13, v13, v10

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 325
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sMajorSim: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 327
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sPlmnSs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 328
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sVoiceRegState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get32()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 330
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sRilVoiceRadioTech: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get25()I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sDataRegState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get5()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 333
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sRilDataRadioTech: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get24()I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 334
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sIsAutoSelectEnable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 335
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sRadioTechModeForWp: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get22()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v12

    if-ne v10, v12, :cond_1

    .line 340
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 341
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap1(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 342
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 343
    :cond_e
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 344
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 346
    const-string/jumbo v12, "reset sIsInvalidSim"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    goto/16 :goto_1

    .line 350
    :cond_f
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 351
    const-string/jumbo v12, "reset sIsInvalidSim in manual mode"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v10

    goto/16 :goto_1

    .line 358
    .end local v10    # "slotId":I
    :cond_10
    const-string/jumbo v12, "Null sServiceState"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 361
    :cond_11
    const-string/jumbo v12, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 362
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get6()I

    move-result v12

    const/16 v13, 0x64

    if-ne v12, v13, :cond_13

    .line 363
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 366
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x5

    .line 365
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 367
    const-string/jumbo v12, "Reload to FDD CSFB modem"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 371
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x3

    .line 370
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 372
    const-string/jumbo v12, "Reload to WG modem"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 374
    :cond_13
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get6()I

    move-result v12

    const/16 v13, 0x65

    if-ne v12, v13, :cond_1

    .line 375
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 378
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x6

    .line 377
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 379
    const-string/jumbo v12, "Reload to TDD CSFB modem"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    :cond_14
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x4

    .line 382
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 384
    const-string/jumbo v12, "Reload to TG modem"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 387
    :cond_15
    const-string/jumbo v12, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 389
    const-string/jumbo v12, "mdType"

    const/4 v13, 0x0

    .line 388
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 390
    .local v11, "toModem":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toModem: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 391
    const/4 v12, 0x3

    if-eq v11, v12, :cond_16

    .line 392
    const/4 v12, 0x4

    if-ne v11, v12, :cond_17

    .line 395
    :cond_16
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 393
    :cond_17
    const/4 v12, 0x5

    if-eq v11, v12, :cond_16

    .line 394
    const/4 v12, 0x6

    if-eq v11, v12, :cond_16

    .line 397
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 399
    .end local v11    # "toModem":I
    :cond_18
    const-string/jumbo v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 400
    const-string/jumbo v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_19

    .line 401
    const-string/jumbo v12, "Leave flight mode"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 402
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get1()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 404
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v6

    .line 403
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 407
    .end local v6    # "i":I
    :cond_19
    const-string/jumbo v12, "Enter flight mode"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 408
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get1()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 409
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v12

    const/4 v13, 0x1

    aput-boolean v13, v12, v6

    .line 408
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 412
    .end local v6    # "i":I
    :cond_1a
    const-string/jumbo v12, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 414
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 416
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap5(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 417
    :cond_1b
    const-string/jumbo v12, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 418
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 419
    :cond_1c
    const-string/jumbo v12, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 420
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 421
    :cond_1d
    const-string/jumbo v12, "android.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 422
    const-string/jumbo v12, "FAKE_USER_TYPE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 423
    .local v4, "fakeUserType":I
    const-string/jumbo v12, "EXTRA_FAKE_REGION"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 424
    .local v3, "fakeRegion":I
    const/4 v5, 0x0

    .line 426
    .local v5, "hasChanged":Z
    if-nez v4, :cond_1e

    if-nez v3, :cond_1e

    .line 427
    const-string/jumbo v12, "Leave ADB Test mode"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 430
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get19()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 431
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 432
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 433
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7()V

    goto/16 :goto_1

    .line 435
    :cond_1e
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 436
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v12

    const/16 v13, -0x63

    if-eq v12, v13, :cond_25

    .line 437
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_25

    .line 439
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    aget-object v7, v12, v13

    .line 440
    .local v7, "imsi":Ljava/lang/String;
    if-eqz v7, :cond_1f

    const-string/jumbo v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 457
    :cond_1f
    const-string/jumbo v12, "Imsi of sMajorSim is unknown"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 460
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v2, v12, v13

    .line 461
    .local v2, "currentMcc":Ljava/lang/String;
    if-eqz v2, :cond_20

    const-string/jumbo v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    .line 462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-ge v12, v13, :cond_22

    .line 463
    :cond_20
    const-string/jumbo v12, "Invalid sNwPlmnStrings"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 480
    .end local v2    # "currentMcc":Ljava/lang/String;
    .end local v7    # "imsi":Ljava/lang/String;
    :goto_5
    if-eqz v5, :cond_1

    .line 481
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sPlmnType1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 482
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sPlmnType1Ext:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get19()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 483
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sPlmnType3:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 484
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sMccDomestic:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 485
    iget-object v12, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    goto/16 :goto_1

    .line 441
    .restart local v7    # "imsi":Ljava/lang/String;
    :cond_21
    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 442
    packed-switch v4, :pswitch_data_0

    .line 454
    :pswitch_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown fakeUserType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 444
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const/4 v5, 0x1

    .line 446
    goto/16 :goto_4

    .line 449
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const/4 v5, 0x1

    .line 451
    goto/16 :goto_4

    .line 465
    .restart local v2    # "currentMcc":Ljava/lang/String;
    :cond_22
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 466
    const/4 v12, 0x1

    if-ne v3, v12, :cond_23

    .line 467
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 469
    :cond_23
    const/4 v12, 0x2

    if-ne v3, v12, :cond_24

    .line 470
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 471
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 473
    :cond_24
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown fakeRegion:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 477
    .end local v2    # "currentMcc":Ljava/lang/String;
    .end local v7    # "imsi":Ljava/lang/String;
    :cond_25
    const-string/jumbo v12, "sMajorSim is Unknown or Capability OFF"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 489
    .end local v3    # "fakeRegion":I
    .end local v4    # "fakeUserType":I
    .end local v5    # "hasChanged":Z
    :cond_26
    const-string/jumbo v12, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 490
    const-string/jumbo v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 491
    .local v8, "sapState":I
    const/4 v12, 0x2

    if-ne v8, v12, :cond_27

    .line 492
    const-string/jumbo v12, "BT_SAP connection state is CONNECTED"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 493
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set0(I)I

    goto/16 :goto_1

    .line 494
    :cond_27
    if-nez v8, :cond_28

    .line 495
    const-string/jumbo v12, "BT_SAP connection state is DISCONNECTED"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 496
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set0(I)I

    goto/16 :goto_1

    .line 498
    :cond_28
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BT_SAP connection state is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class final Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LEDSettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_SOUND_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 879
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 870
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 869
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 872
    const-string/jumbo v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 871
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    .line 874
    const-string/jumbo v0, "max_notification_enqueue_rate"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 873
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 876
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 875
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 878
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 883
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 885
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 884
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 887
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 886
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 889
    const-string/jumbo v1, "notification_light_pulse_default_color"

    .line 888
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 892
    const-string/jumbo v1, "notification_light_pulse_default_led_on"

    .line 891
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 895
    const-string/jumbo v1, "notification_light_pulse_default_led_off"

    .line 894
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 898
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 897
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 901
    const-string/jumbo v1, "notification_light_pulse_custom_values"

    .line 900
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 903
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 905
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 908
    const-string/jumbo v1, "notification_light_screen_on_enable"

    .line 907
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 911
    const-string/jumbo v1, "notification_light_color_auto"

    .line 910
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 913
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const-string/jumbo v1, "notification_light_brightness_level"

    .line 914
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    const-string/jumbo v1, "notification_light_multiple_leds_enable"

    .line 919
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 923
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 882
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 927
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 926
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 931
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 934
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 935
    const-string/jumbo v1, "notification_light_pulse"

    .line 934
    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set10(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 938
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 939
    const-string/jumbo v1, "notification_light_color_auto"

    .line 938
    invoke-static {v0, v1, v2, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 943
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 944
    const-string/jumbo v4, "notification_light_pulse_default_color"

    .line 945
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 943
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set2(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 948
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 949
    const-string/jumbo v4, "notification_light_pulse_default_led_on"

    .line 950
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 948
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set4(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 953
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 954
    const-string/jumbo v4, "notification_light_pulse_default_led_off"

    .line 955
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 953
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set3(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 958
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 961
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 963
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 962
    invoke-static {v0, v1, v3, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 966
    const-string/jumbo v4, "notification_light_pulse_custom_values"

    .line 965
    invoke-static {v0, v4, v6}, Lcyanogenmod/providers/CMSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap31(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 969
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 971
    const-string/jumbo v4, "max_notification_enqueue_rate"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v5

    .line 970
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set7(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 973
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 974
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 975
    const-string/jumbo v4, "notification_sound"

    .line 974
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set13(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 980
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 981
    const-string/jumbo v4, "notification_light_brightness_level"

    .line 982
    const/16 v5, 0xff

    .line 980
    invoke-static {v0, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set9(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 986
    :cond_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 987
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 988
    const-string/jumbo v5, "notification_light_multiple_leds_enable"

    .line 989
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 987
    :goto_2
    invoke-static {v0, v5, v1, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_3
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set8(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 993
    :cond_6
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 994
    const-string/jumbo v5, "notification_light_screen_on_enable"

    .line 995
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get25(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    .line 993
    :goto_4
    invoke-static {v0, v5, v1, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_c

    :goto_5
    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->-set12(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 997
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;)V

    .line 930
    return-void

    :cond_7
    move v1, v3

    .line 934
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 938
    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 989
    goto :goto_2

    :cond_a
    move v1, v3

    .line 987
    goto :goto_3

    :cond_b
    move v1, v3

    .line 995
    goto :goto_4

    :cond_c
    move v2, v3

    .line 993
    goto :goto_5
.end method

.class public Lcom/coloros/systemui/common/helper/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# static fields
.field private static final BATTERY_WARNING:Ljava/lang/String; = "BatteryWarning"

.field private static final ENABLE:Ljava/lang/String; = "1"

.field private static final INTERNAL:Ljava/lang/String; = "Internal"

.field private static final INTERNAL_KEYGUARD:Ljava/lang/String; = "Keyguard"

.field private static final INTERNAL_NOTIFICATION:Ljava/lang/String; = "Notification"

.field private static final INTERNAL_OTHERS:Ljava/lang/String; = "Others"

.field private static final INTERNAL_STATUSBAR:Ljava/lang/String; = "Statusbar"

.field private static final LOG:Ljava/lang/String; = "Log"

.field private static final TAG:Ljava/lang/String; = "DumpHelper"

.field private static final TRACE:Ljava/lang/String; = "Trace"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onSystemUIServiceDump([Lcom/android/systemui/SystemUI;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    .line 48
    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 60
    :cond_0
    aget-object v1, p3, v0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DumpHelper"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v0

    .line 64
    :goto_0
    array-length v5, p3

    if-ge v4, v5, :cond_1

    const-string v5, " "

    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dumping service with dumpsys "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v2, :cond_3

    aget-object v6, p0, v3

    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v4, "====================="

    .line 78
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump service "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_e

    if-nez v4, :cond_e

    const/4 p0, -0x1

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v2, -0x49ed1311

    if-eq p1, v2, :cond_5

    const v2, 0x12b24

    if-eq p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "Log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p0, v0

    goto :goto_2

    :cond_5
    const-string p1, "BatteryWarning"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p0, v5

    :cond_6
    :goto_2
    if-eqz p0, :cond_a

    if-eq p0, v5, :cond_7

    const-string p0, "dump SystemUIService argument error"

    .line 113
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 99
    :cond_7
    aget-object p0, p3, v5

    const-string p1, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "oppo.battery.warning.allow"

    if-eqz p0, :cond_8

    .line 100
    invoke-static {v0}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->setBattWarningAllowed(Z)V

    const-string p0, "false"

    .line 101
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "disable BatteryWarning"

    .line 102
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 103
    :cond_8
    aget-object p0, p3, v5

    const-string p3, "on"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 104
    invoke-static {v5}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->setBattWarningAllowed(Z)V

    const-string p0, "true"

    .line 105
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "enable BatteryWarning"

    .line 106
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string p0, "set bettery warning argument error"

    .line 108
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 91
    :cond_a
    array-length p0, p3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_e

    .line 92
    aget-object p0, p3, v5

    const/4 p1, 0x2

    .line 93
    aget-object p1, p3, p1

    const-string p3, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 94
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/helper/DumpHelper;->openLog(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    goto :goto_5

    .line 49
    :cond_b
    :goto_3
    array-length v1, p0

    :goto_4
    if-ge v0, v1, :cond_d

    aget-object v2, p0, v0

    if-eqz v2, :cond_c

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 55
    :cond_d
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_e

    const-string p0, "dumping plugins:"

    .line 56
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-class p0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.method private static openLog(Ljava/lang/String;ZLjava/io/PrintWriter;)V
    .locals 5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open log, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "Notification"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string p2, "Internal"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string p2, "Keyguard"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string p2, "Trace"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_4
    const-string p2, "Statusbar"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_5
    const-string p2, "Others"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    goto :goto_2

    .line 144
    :cond_1
    invoke-static {p1}, Lcom/coloros/common/util/LogUtil;->setTraceDebugState(Z)V

    goto :goto_2

    .line 140
    :cond_2
    invoke-static {p1}, Lcom/coloros/common/util/LogUtil;->setInternalOthersDebugState(Z)V

    goto :goto_2

    .line 136
    :cond_3
    invoke-static {p1}, Lcom/coloros/common/util/LogUtil;->setInternalNotificationDebugState(Z)V

    goto :goto_2

    .line 132
    :cond_4
    invoke-static {p1}, Lcom/coloros/common/util/LogUtil;->setInternalKeyguardDebugState(Z)V

    goto :goto_2

    .line 128
    :cond_5
    invoke-static {p1}, Lcom/coloros/common/util/LogUtil;->setInternalStatusbarDebugState(Z)V

    goto :goto_2

    .line 124
    :cond_6
    invoke-static {p1}, Lcom/coloros/common/util/LogUtil;->setInternalDebugState(Z)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x729db07d -> :sswitch_5
        -0x3f2913f -> :sswitch_4
        0x4d50125 -> :sswitch_3
        0x222a07c6 -> :sswitch_2
        0x25da2add -> :sswitch_1
        0x2d45dd0b -> :sswitch_0
    .end sparse-switch
.end method

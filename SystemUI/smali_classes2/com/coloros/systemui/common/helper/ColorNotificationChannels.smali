.class public Lcom/coloros/systemui/common/helper/ColorNotificationChannels;
.super Ljava/lang/Object;
.source "ColorNotificationChannels.java"


# static fields
.field public static final CHANNEL_DND_NOTICE:Ljava/lang/String; = "channel_dnd_notice"

.field public static final ENVELOPE_CHANNEL:Ljava/lang/String; = "ENVELOPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAll(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 4

    .line 34
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/app/NotificationChannel;

    const v2, 0x7f110327

    .line 37
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ENVELOPE"

    invoke-direct {v0, v3, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 48
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const v2, 0x7f110302

    .line 50
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "channel_dnd_notice"

    invoke-direct {v0, v2, p0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.class public final Lcom/color/darkmode/receiver/NotificationClickReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/darkmode/receiver/NotificationClickReceiver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/color/darkmode/receiver/NotificationClickReceiver$Companion;

.field public static final EXTRA_OPEN_STATE:Ljava/lang/String; = "extra_open_state"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/receiver/NotificationClickReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/darkmode/receiver/NotificationClickReceiver$Companion;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/darkmode/receiver/NotificationClickReceiver;->Companion:Lcom/color/darkmode/receiver/NotificationClickReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "extra_open_state"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "extra_open_state"

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    sget-object p2, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-virtual {p2, p1, p0}, Lcom/color/darkmode/utils/DarkModeManager;->changeDarkModeByNotification(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

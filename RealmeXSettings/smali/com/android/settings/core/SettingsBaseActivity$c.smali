.class final Lcom/android/settings/core/SettingsBaseActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$c;->a:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;B)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$c;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 300
    new-instance p1, Lcom/android/settings/core/SettingsBaseActivity$a;

    iget-object p2, p0, Lcom/android/settings/core/SettingsBaseActivity$c;->a:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p1, p2}, Lcom/android/settings/core/SettingsBaseActivity$a;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SettingsBaseActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

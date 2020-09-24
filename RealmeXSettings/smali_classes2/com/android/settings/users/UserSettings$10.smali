.class final Lcom/android/settings/users/UserSettings$10;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$10;->d:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$10;->a:I

    iput-boolean p3, p0, Lcom/android/settings/users/UserSettings$10;->b:Z

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$10;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 639
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$10;->d:Lcom/android/settings/users/UserSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->f(Lcom/android/settings/users/UserSettings;)Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/users/UserSettings$10;->a:I

    invoke-virtual {p1, p2}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->showAddUserSetDialog(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$10;->d:Lcom/android/settings/users/UserSettings;

    iget p2, p0, Lcom/android/settings/users/UserSettings$10;->a:I

    invoke-virtual {p1, p2}, Lcom/android/settings/users/UserSettings;->a(I)V

    .line 642
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings$10;->b:Z

    if-nez p1, :cond_1

    .line 643
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$10;->c:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "key_add_user_long_message_displayed"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 645
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

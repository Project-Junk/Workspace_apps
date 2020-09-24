.class final Lcom/android/settings/users/UserSettings$11;
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
.field final synthetic a:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$11;->a:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 660
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$11;->a:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "switch_user"

    const-string v0, "user_type"

    const-string v1, "1"

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$11;->a:Lcom/android/settings/users/UserSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->g(Lcom/android/settings/users/UserSettings;)I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->b(I)V

    return-void
.end method

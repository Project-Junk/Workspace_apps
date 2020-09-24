.class final Lcom/android/settings/SetFullBackupPassword$1;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetFullBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/SetFullBackupPassword;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->f:Landroid/widget/Button;

    const-string v1, "SetFullBackupPassword"

    if-ne p1, v0, :cond_2

    .line 48
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    iget-object p1, p1, Lcom/android/settings/SetFullBackupPassword;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    iget-object v2, v2, Lcom/android/settings/SetFullBackupPassword;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string p1, "password mismatch"

    .line 54
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    const v0, 0x7f120c03

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/SetFullBackupPassword;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "password set successfully"

    .line 65
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    const v0, 0x7f120c04

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {p1}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    return-void

    :cond_1
    const-string p1, "failure; password mismatch?"

    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    const v0, 0x7f120c05

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 78
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->a:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {p1}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    return-void

    :cond_3
    const-string p1, "Click on unknown view"

    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

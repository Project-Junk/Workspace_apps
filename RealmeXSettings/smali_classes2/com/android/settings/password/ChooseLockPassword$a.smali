.class public final Lcom/android/settings/password/ChooseLockPassword$a;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    .line 113
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "confirm_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "extra_require_password"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/settings/password/ChooseLockPassword$a;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final a(II)Lcom/android/settings/password/ChooseLockPassword$a;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v0, "lockscreen.password_max"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final a(J)Lcom/android/settings/password/ChooseLockPassword$a;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public final a(Z)Lcom/android/settings/password/ChooseLockPassword$a;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final a([B)Lcom/android/settings/password/ChooseLockPassword$a;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object p0
.end method

.method public final b(I)Lcom/android/settings/password/ChooseLockPassword$a;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
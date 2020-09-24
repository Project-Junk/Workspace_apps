.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$12;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 319
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;->c:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

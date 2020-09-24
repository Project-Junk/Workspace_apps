.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$1;
.super Landroid/os/Handler;
.source "SafeQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/SafeQuestionActivity$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$1;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 443
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/c/a/f;

    if-eqz p1, :cond_0

    .line 1068
    iget p1, p1, Lcom/c/a/f;->a:I

    const v0, 0x1c9c769

    if-ne p1, v0, :cond_0

    .line 445
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$1;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 446
    invoke-interface {p1, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity$a;->onVerify(Z)V

    :cond_0
    return-void
.end method

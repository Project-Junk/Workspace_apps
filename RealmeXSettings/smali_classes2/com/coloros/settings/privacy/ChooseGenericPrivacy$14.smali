.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Landroid/os/CountDownTimer;

.field final synthetic e:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->e:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->c:Landroid/widget/Button;

    iput-object p5, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->d:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 977
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->e:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;)V

    .line 978
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->c:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 979
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;->d:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

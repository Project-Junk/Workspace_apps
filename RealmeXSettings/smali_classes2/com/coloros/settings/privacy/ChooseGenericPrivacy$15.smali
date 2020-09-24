.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$15;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/CountDownTimer;

.field final synthetic b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 987
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$15;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$15;->a:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 990
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$15;->a:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

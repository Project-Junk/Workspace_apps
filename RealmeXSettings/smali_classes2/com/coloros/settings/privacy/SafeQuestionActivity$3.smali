.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$3;
.super Ljava/lang/Object;
.source "SafeQuestionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

.field final synthetic b:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$3;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    iput-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$3;->b:Lcolor/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 525
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$3;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$3;->b:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

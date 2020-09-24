.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

.field final synthetic b:Lcolor/support/v7/app/AlertDialog;

.field final synthetic c:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;->c:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    iput-object p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;->b:Lcolor/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1021
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1022
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;->b:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    .line 1024
    :cond_0
    invoke-static {}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a()V

    return-void
.end method

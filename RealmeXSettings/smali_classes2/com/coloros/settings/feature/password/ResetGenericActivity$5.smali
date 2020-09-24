.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$5;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

.field final synthetic b:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$5;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$5;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$5;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 587
    invoke-interface {v0, v1, v2, v2, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$b;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

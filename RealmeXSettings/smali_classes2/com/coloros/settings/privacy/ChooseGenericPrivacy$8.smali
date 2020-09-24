.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$8;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lcom/coloros/settings/privacy/SafeQuestionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$8;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 729
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$8;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;)V

    return-void

    .line 731
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$8;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method

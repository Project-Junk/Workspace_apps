.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lcom/coloros/settings/privacy/SafeQuestionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->c:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 927
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->c:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iget-object p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->a:Ljava/lang/String;

    iget-object p4, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->b:Ljava/lang/String;

    invoke-static {p1, p3, p4, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 929
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;->c:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method

.class final Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;
.super Ljava/lang/Object;
.source "ChooseAbstractPrivacy.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;->b:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;->b:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    iput-object p2, p1, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b:[B

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, p2, v0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    return-void

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;->b:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b(Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/coloros/settings/privacy/ChooseComplexPrivacy$2;
.super Ljava/lang/Object;
.source "ChooseComplexPrivacy.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChooseComplexPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 132
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->b()V

    const/4 p1, 0x1

    return p1
.end method

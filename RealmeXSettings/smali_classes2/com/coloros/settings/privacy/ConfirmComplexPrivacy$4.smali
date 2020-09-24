.class final Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$4;
.super Ljava/lang/Object;
.source "ConfirmComplexPrivacy.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$4;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

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

    .line 192
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$4;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->h()V

    const/4 p1, 0x1

    return p1
.end method

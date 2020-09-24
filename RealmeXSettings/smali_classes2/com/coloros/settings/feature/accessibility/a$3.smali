.class public final Lcom/coloros/settings/feature/accessibility/a$3;
.super Ljava/lang/Object;
.source "ColorAccessibilityServiceWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/accessibility/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/a$3;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 215
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 216
    iget-object p2, p0, Lcom/coloros/settings/feature/accessibility/a$3;->a:Landroid/content/DialogInterface$OnClickListener;

    const/4 p3, -0x2

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

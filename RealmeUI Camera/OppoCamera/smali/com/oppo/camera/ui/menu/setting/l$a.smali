.class public Lcom/oppo/camera/ui/menu/setting/l$a;
.super Ljava/lang/Object;
.source "ExpandableMenuPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/setting/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/setting/l;

.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/menu/setting/l;Landroid/view/View;I)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->a:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->b:Landroid/view/View;

    const/4 p1, 0x4

    .line 141
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->c:I

    .line 144
    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->b:Landroid/view/View;

    .line 145
    iput p3, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->c:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 160
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->c:I

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->c:I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->a:Lcom/oppo/camera/ui/menu/setting/l;

    iput-boolean v0, p1, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->a:Lcom/oppo/camera/ui/menu/setting/l;

    iput-boolean v0, p1, Lcom/oppo/camera/ui/menu/setting/l;->q:Z

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 150
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->c:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->b:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->a:Lcom/oppo/camera/ui/menu/setting/l;

    iput-boolean v0, p1, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l$a;->a:Lcom/oppo/camera/ui/menu/setting/l;

    iput-boolean v0, p1, Lcom/oppo/camera/ui/menu/setting/l;->q:Z

    :goto_0
    return-void
.end method

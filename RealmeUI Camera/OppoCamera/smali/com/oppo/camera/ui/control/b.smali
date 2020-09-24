.class public Lcom/oppo/camera/ui/control/b;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;
.implements Lcom/oppo/camera/ui/menu/b/c$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/control/b$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oppo/camera/ui/RotateImageView;

.field private B:Lcom/oppo/camera/ui/control/ShutterButton;

.field private C:Lcom/oppo/camera/ui/control/MainShutterButton;

.field private D:Lcom/oppo/camera/ui/control/ShutterButton;

.field private E:Lcom/oppo/camera/ui/control/ShutterButton;

.field private F:Lcom/oppo/camera/ui/control/ShutterButton;

.field private G:Lcom/oppo/camera/ui/control/ThumbImageView;

.field private H:Lcom/oppo/camera/ui/control/e;

.field private I:Lcom/oppo/camera/ui/control/f;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Lcom/oppo/camera/ui/control/d;

.field private M:Lcom/oppo/camera/ui/menu/b/c;

.field private N:Lcom/oppo/camera/ui/menu/b/d;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:Landroid/content/ContentResolver;

.field private R:Lcom/oppo/camera/ui/control/e;

.field private S:Lcom/a/a/f;

.field private T:Lcom/a/a/f;

.field private U:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private V:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private a:Z

.field private b:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:J

.field private q:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/oppo/camera/ui/control/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/app/Activity;

.field private t:Lcom/oppo/camera/ui/control/a;

.field private u:Lcom/oppo/camera/ui/d;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcom/oppo/camera/ui/RotateImageView;

.field private z:Lcom/oppo/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V
    .locals 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    .line 72
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    .line 73
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    .line 76
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    .line 77
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    .line 78
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    .line 79
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    .line 82
    iput p2, p0, Lcom/oppo/camera/ui/control/b;->o:I

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/oppo/camera/ui/control/b;->p:J

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    .line 87
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->r:Landroid/graphics/Bitmap;

    .line 88
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    .line 89
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    .line 90
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    .line 91
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    .line 92
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    .line 94
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    .line 95
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    .line 96
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    .line 97
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 98
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    .line 99
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 100
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 101
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 102
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    .line 103
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    .line 104
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    .line 106
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->J:Landroid/widget/TextView;

    .line 107
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->L:Lcom/oppo/camera/ui/control/d;

    .line 109
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    .line 110
    new-instance v1, Lcom/oppo/camera/ui/menu/b/d;

    invoke-direct {v1}, Lcom/oppo/camera/ui/menu/b/d;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    .line 111
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    .line 112
    iput p2, p0, Lcom/oppo/camera/ui/control/b;->P:I

    .line 113
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->Q:Landroid/content/ContentResolver;

    .line 114
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->R:Lcom/oppo/camera/ui/control/e;

    .line 116
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    .line 117
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    .line 119
    new-instance p2, Lcom/oppo/camera/ui/control/b$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/control/b$1;-><init>(Lcom/oppo/camera/ui/control/b;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/b;->U:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    .line 179
    new-instance p2, Lcom/oppo/camera/ui/control/b$2;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/control/b$2;-><init>(Lcom/oppo/camera/ui/control/b;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/b;->V:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    .line 228
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    .line 229
    iput-object p3, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    .line 230
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->Q:Landroid/content/ContentResolver;

    return-void
.end method

.method private K()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 398
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 399
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 405
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 411
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 412
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private L()V
    .locals 5

    const-string v0, "CameraControlUI"

    const-string v1, "initHeadline"

    .line 652
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-nez v1, :cond_1

    .line 655
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 656
    invoke-static {}, Lcom/oppo/camera/o/d;->K()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 657
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    .line 658
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 659
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 661
    new-instance v2, Lcom/oppo/camera/ui/menu/b/c;

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/oppo/camera/ui/menu/b/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    .line 662
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/menu/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    invoke-static {}, Lcom/oppo/camera/o/d;->K()I

    move-result v4

    invoke-virtual {v2, v3, v4, p0}, Lcom/oppo/camera/ui/menu/b/c;->a(IILcom/oppo/camera/ui/menu/b/c$e;)V

    .line 664
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    iget v3, p0, Lcom/oppo/camera/ui/control/b;->n:I

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/menu/b/d;->a(I)V

    .line 665
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/b/d;->a()V

    .line 666
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/b/c;->getHeadlineBackground()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 669
    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    if-nez v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    :cond_0
    const-string v1, "initHeadline X"

    .line 673
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private M()V
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009e

    .line 934
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 935
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    .line 937
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 938
    invoke-static {}, Lcom/oppo/camera/o/d;->G()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 939
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 941
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    .line 944
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    .line 947
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    .line 950
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 960
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 961
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    .line 963
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    .line 964
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    .line 965
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    :cond_1
    return-void
.end method

.method private O()V
    .locals 8

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPauseResumeClicked, mbVideoRecordingPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_5

    .line 1249
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-nez v0, :cond_0

    const-string v0, "onVideoPauseResumeClicked, mCameraControlButtonListener is null."

    .line 1250
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1255
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1257
    iget-wide v4, p0, Lcom/oppo/camera/ui/control/b;->p:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const-string v0, "onVideoPauseResumeClicked, onVideoPauseResumeClicked time less than 1000ms"

    .line 1258
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1263
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    const-string v1, "button_shape_dial_rotate"

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    .line 1264
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/a;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1265
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    .line 1266
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getRingShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->g()V

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    const v1, 0x7f0701c5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 1271
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    .line 1272
    iput-wide v2, p0, Lcom/oppo/camera/ui/control/b;->p:J

    goto :goto_0

    .line 1275
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/a;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1276
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    .line 1277
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getRingShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->f()V

    .line 1281
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setImageResource(I)V

    const/4 v0, 0x1

    .line 1282
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    .line 1283
    iput-wide v2, p0, Lcom/oppo/camera/ui/control/b;->p:J

    :cond_5
    :goto_0
    return-void
.end method

.method private P()I
    .locals 2

    .line 1540
    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 1541
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1549
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    if-eqz v0, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private Q()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1665
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 1667
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    return-void
.end method

.method private R()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1671
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 1673
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/b;)Lcom/oppo/camera/ui/control/a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/b;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/b;)Lcom/oppo/camera/ui/control/ShutterButton;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/b;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/control/b;)Landroid/content/ContentResolver;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oppo/camera/ui/control/b;->Q:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private o(Z)V
    .locals 7

    .line 1342
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    if-nez v0, :cond_5

    .line 1343
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    const v1, 0x7f0703db

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1344
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/e;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1345
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object v3

    .line 1346
    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v5, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f009e

    .line 1347
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1346
    invoke-virtual {v4, v5}, Lcom/oppo/camera/ui/control/ThumbImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 1349
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://media/external/video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1350
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0095

    .line 1351
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1350
    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/control/ThumbImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 1354
    iget-boolean v3, p0, Lcom/oppo/camera/ui/control/b;->h:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/ui/control/b;->i:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 1358
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v0, p1, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_1

    .line 1355
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1356
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_1

    :cond_4
    const-string p1, "CameraControlUI"

    const-string v0, "updateThumbnailView, mLastThumbnail is null"

    .line 1361
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1364
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private p(Z)V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/control/g;->a(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnail(), mLastThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/b;->o(Z)V

    goto :goto_0

    .line 1393
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/b;->q(Z)V

    :goto_0
    return-void
.end method

.method private q(Z)V
    .locals 2

    const-string v0, "CameraControlUI"

    const-string v1, "getLastThumbnailUncached()"

    .line 1398
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1401
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1402
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    .line 1405
    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/control/b$a;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/ui/control/b$a;-><init>(Lcom/oppo/camera/ui/control/b;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public A()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public B()I
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()V
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->d()V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->e()V

    :cond_0
    return-void
.end method

.method public F()Z
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 1601
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->r()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1609
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 1610
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public H()V
    .locals 3

    .line 1618
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 1619
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->Q()V

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    new-instance v1, Lcom/oppo/camera/ui/control/b$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/b$3;-><init>(Lcom/oppo/camera/ui/control/b;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1637
    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method public I()V
    .locals 3

    .line 1642
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    if-nez v0, :cond_0

    .line 1643
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->R()V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    new-instance v1, Lcom/oppo/camera/ui/control/b$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/b$4;-><init>(Lcom/oppo/camera/ui/control/b;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1661
    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method public J()Z
    .locals 1

    .line 1736
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->a()Z

    move-result v0

    return v0
.end method

.method public a(BZ)V
    .locals 3

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControlPanelBgColor, bgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1450
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v0, 0x7f05001d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 1446
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 1454
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    if-eqz p2, :cond_4

    .line 1462
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    const/16 p2, 0xc8

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 1465
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/oppo/camera/ui/control/b;->P:I

    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 243
    invoke-virtual/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/b/c;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1500
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1501
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->b()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1503
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->c()Ljava/util/List;

    move-result-object p1

    .line 1506
    :goto_0
    invoke-static {p2}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result p2

    .line 1508
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1510
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1512
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    .line 1514
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 1516
    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/b/c;->a(Ljava/util/List;I)V

    goto :goto_1

    .line 1518
    :cond_1
    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    .line 336
    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    if-eq v1, v2, :cond_0

    .line 337
    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    .line 339
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->K()V

    .line 344
    :cond_0
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 345
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->b()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->c()Ljava/util/List;

    move-result-object p1

    .line 350
    :goto_0
    invoke-static {p2}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    move v2, v0

    .line 353
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 354
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    .line 362
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz p2, :cond_4

    .line 363
    invoke-virtual {p2, p1, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Ljava/util/List;I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 366
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    if-nez p1, :cond_5

    .line 367
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    goto :goto_3

    .line 369
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 372
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->x()V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 911
    invoke-virtual {p0, p1, p1}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_0

    .line 913
    :cond_0
    iget-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 914
    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_0

    .line 918
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const/4 p2, 0x3

    .line 919
    invoke-static {p1, p2}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x12c

    const/4 v1, 0x0

    .line 918
    invoke-static {v0, p1, p2, v1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/ShutterButton;)V
    .locals 3

    const-string v0, "CameraControlUI"

    if-nez p1, :cond_0

    const-string p1, "onShutterButtonClick, ShutterButton is null."

    .line 1040
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "onShutterButtonClick, moreTab is showing...."

    .line 1046
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1051
    :cond_1
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    const-string v1, "onShutterButtonClick, camera menu is popup...."

    .line 1054
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz v1, :cond_7

    .line 1058
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v1, 0x7f08006f

    const/4 v2, 0x3

    if-eq p1, v1, :cond_5

    const v0, 0x7f0801a8

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 1060
    :cond_3
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne p1, v2, :cond_4

    .line 1061
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->i()V

    goto :goto_0

    .line 1063
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->f()V

    goto :goto_0

    .line 1069
    :cond_5
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    if-ne p1, v2, :cond_7

    :cond_6
    const-string p1, "onShutterButtonClick, camera_from_other_app_close_btn"

    .line 1070
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/ShutterButton;Z)V
    .locals 0

    .line 1032
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_0

    .line 1033
    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/control/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/a;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Lcom/oppo/camera/ui/control/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 4

    const-string v0, "CameraControlUI"

    const-string v1, "onPause"

    .line 528
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 530
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    const/4 v2, 0x1

    .line 531
    iput-boolean v2, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    .line 532
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    .line 534
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v3, :cond_0

    .line 535
    invoke-virtual {v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->b()V

    .line 538
    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v3, :cond_1

    .line 539
    invoke-virtual {v3}, Lcom/oppo/camera/ui/control/ShutterButton;->clearAnimation()V

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    if-eqz v3, :cond_2

    .line 543
    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v3, 0x0

    .line 544
    iput-object v3, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    .line 547
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/oppo/camera/ui/control/b;->e(ZZ)V

    .line 549
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 550
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 551
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v1, :cond_4

    .line 555
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/b/c;->onPause()V

    .line 558
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;Z)V

    .line 559
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->o()V

    .line 561
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_5

    .line 562
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->getShutterButtonInfo()Lcom/oppo/camera/ui/control/c;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "onPause, null == currentButtonInfo"

    .line 565
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/d;)V
    .locals 0

    .line 1478
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->L:Lcom/oppo/camera/ui/control/d;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/e;)V
    .locals 3

    .line 1290
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->R:Lcom/oppo/camera/ui/control/e;

    .line 1291
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/e;Z)V
    .locals 6

    .line 1295
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1297
    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    .line 1300
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    if-eqz v0, :cond_1

    return-void

    .line 1304
    :cond_1
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    .line 1307
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->R:Lcom/oppo/camera/ui/control/e;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz v0, :cond_2

    .line 1309
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->a()J

    move-result-wide v2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->a()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    .line 1310
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    .line 1311
    :cond_2
    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/control/b;->o(Z)V

    .line 1314
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    .line 1315
    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 1318
    :cond_4
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    const-string p2, "CameraControlUI"

    if-eqz p1, :cond_5

    const-string p1, "CameraTest Thumbnail Updated"

    .line 1319
    invoke-static {p2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1321
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateThumbnailView, mbFirstCallHasExcuted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mLastThumbnail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    if-eqz p1, :cond_6

    .line 1326
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    .line 1327
    new-instance p1, Lcom/oppo/camera/v$a;

    invoke-direct {p1}, Lcom/oppo/camera/v$a;-><init>()V

    .line 1328
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    .line 1329
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/e;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    .line 1330
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/e;->d()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/oppo/camera/v$a;->l:J

    const/4 p2, 0x0

    .line 1331
    iput-boolean p2, p1, Lcom/oppo/camera/v$a;->w:Z

    .line 1332
    iput-boolean v1, p1, Lcom/oppo/camera/v$a;->x:Z

    .line 1333
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    invoke-interface {p2, p1}, Lcom/oppo/camera/ui/control/f;->a(Lcom/oppo/camera/v$a;)V

    :cond_6
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/f;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 236
    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 425
    invoke-virtual {v0, p2, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZZZ)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResumeMessage, mCameraEntryType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowBeauty3D: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowModeTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPanelMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShortcut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    .line 510
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 511
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 515
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 520
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    .line 523
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/c;->onResume()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/control/b;->f(I)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v3, "pref_support_thumbnail"

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->g(I)V

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/control/b;->g(I)V

    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 702
    iput p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 703
    :goto_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    return-void
.end method

.method public b(IZ)V
    .locals 3

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControlPanelBgColor, previewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1416
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_2

    .line 1414
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_2

    .line 1412
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    :goto_2
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/ShutterButton;)V
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CameraControlUI"

    const-string v0, "onShutterButtonLongClick, moreTab is showing...."

    .line 1086
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1091
    :cond_0
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f0801a8

    if-ne p1, v0, :cond_2

    .line 1096
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->g()V

    :cond_2
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 5

    const-string v0, "CameraControlUI"

    const-string v1, "resetShutterButton"

    .line 759
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_5

    .line 762
    iget v1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 763
    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const-string v0, "button_color_inside_red"

    invoke-direct {p1, v4, v0}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 768
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    .line 771
    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    if-eqz p1, :cond_2

    .line 772
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 773
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    .line 774
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->setClickable(Z)V

    .line 775
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_0

    .line 778
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 782
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 783
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setPressed(Z)V

    .line 786
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraShutterButton, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_3

    .line 806
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setClickable(Z)V

    .line 808
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 811
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 813
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 815
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c()V
    .locals 6

    .line 285
    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    .line 286
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->d()V

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0801a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/control/MainShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    .line 288
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    .line 291
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->U:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    .line 292
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    .line 295
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v4, 0x7f0801d3

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 296
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->V:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    .line 297
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    .line 300
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v4, 0x7f08016f

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 301
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v5, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v5}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    .line 305
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v5, 0x7f08020c

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 306
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    .line 310
    iget v2, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne v2, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    .line 312
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703db

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    .line 315
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/oppo/camera/ui/control/b;->o:I

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 319
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    .line 320
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    .line 323
    iget v1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, "button_color_inside_red"

    .line 324
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    .line 326
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->requestFocus()Z

    .line 330
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->L()V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(IZ)V

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    .line 720
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    .line 723
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 724
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    .line 727
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    .line 728
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    .line 731
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_6

    .line 732
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    .line 735
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    .line 736
    iget v2, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-eq v0, v2, :cond_7

    const/4 v0, 0x2

    if-ne v0, v2, :cond_8

    .line 737
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    :cond_8
    return-void
.end method

.method public c(Lcom/oppo/camera/ui/control/ShutterButton;)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f0801a8

    if-ne p1, v0, :cond_0

    .line 1103
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->h()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 434
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->g(I)V

    .line 436
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->e(I)V

    .line 437
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 439
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    .line 441
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 445
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_2

    .line 446
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 449
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_3

    .line 450
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(ZZ)V
    .locals 2

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSwitchCameraButton, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_3

    .line 835
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setEnabled(Z)V

    .line 836
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 839
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 841
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 843
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    .line 381
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 382
    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 384
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v3, 0x7f0800af

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    .line 387
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 388
    invoke-static {}, Lcom/oppo/camera/o/d;->G()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 391
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloseFromOtherAppButtonVisibility(), visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 875
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    goto :goto_0

    .line 877
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 457
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    .line 458
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->g(I)V

    .line 459
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 461
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    .line 463
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_2

    .line 468
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(ZZ)V
    .locals 2

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableThumbView(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_2

    .line 852
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setEnabled(Z)V

    .line 853
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 856
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 858
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ThumbImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 860
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 4

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraShutterButtonVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    const-string v0, "pref_support_switch_camera"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->g(I)V

    .line 476
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->e(I)V

    .line 478
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 479
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_2

    .line 487
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_3

    .line 492
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(ZZ)V
    .locals 0

    .line 866
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 867
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 499
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    .line 500
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    return-void
.end method

.method public f(I)V
    .locals 4

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchCameraButtonVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    .line 896
    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 573
    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->h:Z

    return-void
.end method

.method public f(ZZ)V
    .locals 2

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecording isEnableThumbView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1140
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    .line 1143
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p2}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 1144
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p2}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 1146
    iget p2, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 1148
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1149
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/control/b;->f(I)V

    .line 1152
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 1155
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_3
    return-void
.end method

.method public g()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->h:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703db

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 4

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbViewVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "CameraControlUI"

    const-string v1, "onDestroy"

    .line 584
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->a()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->r:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->r:Landroid/graphics/Bitmap;

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v0, v1, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    .line 597
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->a()V

    .line 598
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz v0, :cond_3

    .line 602
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/e;->f()V

    .line 603
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_4

    .line 607
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->g()V

    .line 610
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->N()V

    .line 611
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    .line 612
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    .line 613
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 614
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    .line 615
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    .line 616
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    .line 617
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    .line 618
    iput-boolean v2, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    .line 619
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->J:Landroid/widget/TextView;

    .line 620
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    .line 621
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    .line 622
    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setShutterButtonTime(I)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->b()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/d;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 1582
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->L:Lcom/oppo/camera/ui/control/d;

    if-eqz v0, :cond_0

    .line 1583
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/control/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->c()V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 4

    const-string v0, "CameraControlUI"

    const-string v1, "startVideoRecording()"

    .line 1113
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1116
    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    .line 1118
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v3, "pref_support_recording_capture"

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/4 v0, 0x4

    .line 1123
    invoke-virtual {p0, v0, v2}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1126
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_2

    const v0, 0x7f0701c5

    .line 1127
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setImageResource(I)V

    .line 1128
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/b;->p:J

    .line 1130
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    :cond_2
    const/16 p1, 0x8

    .line 1133
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    return-void
.end method

.method public j(I)Z
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/d;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 1591
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 1592
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k(Z)V
    .locals 0

    .line 1338
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/b;->p(Z)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/oppo/camera/ui/control/ShutterButton;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    return-object v0
.end method

.method public l(Z)V
    .locals 0

    .line 1370
    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->i:Z

    return-void
.end method

.method public m()Lcom/oppo/camera/ui/control/e;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    return-object v0
.end method

.method public m(Z)V
    .locals 3

    .line 1421
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 1428
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1431
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public n()I
    .locals 1

    .line 698
    iget v0, p0, Lcom/oppo/camera/ui/control/b;->o:I

    return v0
.end method

.method public n(Z)V
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    .line 1529
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setMultiFinger(Z)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 792
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setScaleX(F)V

    .line 793
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setScaleY(F)V

    .line 794
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1167
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    const-string v1, "CameraControlUI"

    if-eqz v0, :cond_0

    const-string p1, "onClick, Activity is paused, so return!"

    .line 1168
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1173
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x3

    sparse-switch v0, :sswitch_data_0

    const-string p1, "onClick, default"

    .line 1235
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "onClick, video_pause_resume"

    .line 1225
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->O()V

    goto :goto_0

    :sswitch_1
    const-string v0, "onClick, thumbnail"

    .line 1175
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    if-eqz v0, :cond_3

    .line 1178
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/control/f;->a(Lcom/oppo/camera/ui/control/e;Landroid/view/View;)V

    goto :goto_0

    .line 1231
    :sswitch_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->j()V

    goto :goto_0

    :sswitch_3
    const-string p1, "onClick, done_button"

    .line 1184
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    .line 1187
    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1188
    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->a()V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_3

    .line 1190
    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->c()V

    goto :goto_0

    :sswitch_4
    const-string p1, "onClick, btn_retake"

    .line 1197
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne p1, v2, :cond_2

    .line 1200
    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/4 v0, 0x1

    const-string v1, "button_color_inside_red"

    invoke-direct {p1, v0, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    .line 1204
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    .line 1205
    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->d()V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    .line 1209
    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->b()V

    goto :goto_0

    :sswitch_5
    const-string p1, "onClick, btn_play"

    .line 1216
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    .line 1219
    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->e()V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080063 -> :sswitch_5
        0x7f080064 -> :sswitch_4
        0x7f0800c3 -> :sswitch_3
        0x7f08016f -> :sswitch_2
        0x7f0801e8 -> :sswitch_1
        0x7f08020c -> :sswitch_0
    .end sparse-switch
.end method

.method public p()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 3

    .line 970
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->M()V

    .line 971
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 972
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    .line 973
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 974
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 975
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 976
    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 978
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 985
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 986
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 988
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 993
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 994
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    .line 996
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 3

    .line 1002
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->M()V

    .line 1003
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 1004
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 1005
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 1006
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 1007
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1008
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 1009
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    .line 1011
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 1012
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    return-void
.end method

.method public t()V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 1020
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 1021
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    .line 1022
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    .line 1023
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 1024
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 1025
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    const/4 v0, 0x0

    .line 1026
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    .line 1027
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()V
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->performClick()Z

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->f()V

    return-void
.end method

.method public x()V
    .locals 2

    const-string v0, "CameraControlUI"

    const-string v1, "initThumbnail()"

    .line 1374
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1378
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/control/b;->p(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1380
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y()I
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    return v0

    .line 1474
    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .line 1482
    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v0

    return v0
.end method

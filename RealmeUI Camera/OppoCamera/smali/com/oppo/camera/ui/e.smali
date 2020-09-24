.class public Lcom/oppo/camera/ui/e;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/c;
.implements Lcom/oppo/camera/ui/preview/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/e$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private C:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private D:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private E:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

.field private G:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private H:Landroid/view/View;

.field private I:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private J:Landroid/widget/PopupWindow;

.field private K:Landroid/widget/PopupWindow;

.field private L:Landroid/widget/PopupWindow;

.field private M:Landroid/widget/PopupWindow;

.field private N:Landroid/widget/RelativeLayout;

.field private O:Landroid/widget/RelativeLayout;

.field private P:Landroid/animation/AnimatorSet;

.field private Q:Landroid/animation/AnimatorSet;

.field private R:B

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/ui/menu/setting/l;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/oppo/camera/ui/preview/a;

.field private V:Lcom/oppo/camera/ui/preview/i;

.field private W:Lcom/oppo/camera/ui/modepanel/c;

.field private X:Lcom/oppo/camera/ui/menu/setting/l;

.field private Y:Lcom/oppo/camera/ui/RotateImageView;

.field private Z:Lcom/oppo/camera/ui/menu/a/g;

.field private aa:Landroid/animation/ObjectAnimator;

.field private ab:Z

.field private ac:Lcom/oppo/camera/ui/modepanel/f;

.field private ad:Lcom/oppo/camera/ui/preview/a/g;

.field private ae:Lcom/oppo/camera/ui/preview/a$b;

.field private af:Lcom/oppo/camera/ui/a;

.field private ag:Landroid/view/View$OnLayoutChangeListener;

.field private ah:Landroid/view/View$OnLayoutChangeListener;

.field private ai:Landroid/os/Handler;

.field private aj:Landroid/view/View$OnClickListener;

.field private ak:Lcom/oppo/camera/ui/menu/a/g$a;

.field private al:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

.field private am:Lcom/oppo/camera/ui/menu/setting/l$b;

.field private g:Landroid/app/Activity;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/oppo/camera/ui/control/b;

.field private m:Lcom/oppo/camera/ui/preview/d;

.field private n:Lcom/oppo/camera/i;

.field private o:Lcom/oppo/camera/ui/preview/m;

.field private p:Lcom/oppo/camera/ui/preview/f;

.field private q:Lcom/oppo/camera/ui/menu/setting/i;

.field private r:Lcom/oppo/camera/ui/menu/setting/i;

.field private s:Lcom/oppo/camera/ui/d;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V
    .locals 4

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->h:Z

    .line 118
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->i:Z

    .line 119
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->j:Z

    .line 120
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->k:Z

    .line 121
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    .line 122
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    .line 123
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    .line 124
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    .line 125
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    .line 126
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    .line 127
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    .line 128
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const/4 v2, 0x1

    .line 129
    iput v2, p0, Lcom/oppo/camera/ui/e;->t:I

    .line 130
    iput v1, p0, Lcom/oppo/camera/ui/e;->u:I

    .line 131
    iput v1, p0, Lcom/oppo/camera/ui/e;->v:I

    .line 132
    iput v1, p0, Lcom/oppo/camera/ui/e;->w:I

    .line 133
    iput v1, p0, Lcom/oppo/camera/ui/e;->x:I

    .line 134
    iput v1, p0, Lcom/oppo/camera/ui/e;->y:I

    .line 135
    iput v1, p0, Lcom/oppo/camera/ui/e;->z:I

    .line 136
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    .line 137
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 138
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 139
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 140
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 141
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    .line 142
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 143
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    .line 144
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 145
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    .line 146
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    .line 147
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    .line 148
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    .line 149
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    .line 150
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    .line 151
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    .line 152
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    .line 153
    iput-byte v1, p0, Lcom/oppo/camera/ui/e;->R:B

    .line 154
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    .line 156
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    .line 157
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    .line 158
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    .line 159
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    .line 160
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    .line 161
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    .line 162
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    .line 163
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    .line 164
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->ab:Z

    .line 165
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    .line 167
    new-instance v0, Lcom/oppo/camera/ui/e$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$1;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ad:Lcom/oppo/camera/ui/preview/a/g;

    .line 188
    new-instance v0, Lcom/oppo/camera/ui/e$12;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$12;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ae:Lcom/oppo/camera/ui/preview/a$b;

    .line 223
    new-instance v0, Lcom/oppo/camera/ui/e$23;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$23;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->af:Lcom/oppo/camera/ui/a;

    .line 241
    new-instance v0, Lcom/oppo/camera/ui/e$34;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$34;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ag:Landroid/view/View$OnLayoutChangeListener;

    .line 257
    new-instance v0, Lcom/oppo/camera/ui/e$36;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$36;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ah:Landroid/view/View$OnLayoutChangeListener;

    .line 283
    new-instance v0, Lcom/oppo/camera/ui/e$37;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$37;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    .line 377
    new-instance v0, Lcom/oppo/camera/ui/e$38;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$38;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->aj:Landroid/view/View$OnClickListener;

    .line 431
    new-instance v0, Lcom/oppo/camera/ui/e$39;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$39;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ak:Lcom/oppo/camera/ui/menu/a/g$a;

    .line 475
    new-instance v0, Lcom/oppo/camera/ui/e$40;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$40;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->al:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    .line 4397
    new-instance v0, Lcom/oppo/camera/ui/e$33;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$33;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->am:Lcom/oppo/camera/ui/menu/setting/l$b;

    .line 592
    iput-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    .line 593
    iput-object p2, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    .line 594
    iput-object p3, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 595
    new-instance p1, Lcom/oppo/camera/ui/control/b;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-direct {p1, p2, v0, v3}, Lcom/oppo/camera/ui/control/b;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    .line 596
    new-instance p1, Lcom/oppo/camera/ui/preview/d;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, p2, v0, p0}, Lcom/oppo/camera/ui/preview/d;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/d$b;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    .line 597
    new-instance p1, Lcom/oppo/camera/ui/menu/setting/i;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, p2, v0, p3, v1}, Lcom/oppo/camera/ui/menu/setting/i;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Z)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    .line 598
    new-instance p1, Lcom/oppo/camera/ui/menu/setting/i;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, p2, v0, p3, v2}, Lcom/oppo/camera/ui/menu/setting/i;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Z)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    return-void
.end method

.method private Q(Z)V
    .locals 4

    .line 4613
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    .line 4614
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4615
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x2

    .line 4616
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 4617
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v2}, Lcom/oppo/camera/ui/d;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 4618
    iget v2, p0, Lcom/oppo/camera/ui/e;->u:I

    iput v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 4619
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ae()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 4620
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v2}, Lcom/oppo/camera/ui/d;->C()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 4621
    iget v2, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4624
    iput v3, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_0

    .line 4626
    :cond_0
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 4629
    :goto_0
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_1
    return-void
.end method

.method private R(Z)V
    .locals 1

    .line 4728
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    .line 4729
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    .line 4732
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    .line 4733
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    .line 4736
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    .line 4737
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    .line 4740
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_3

    .line 4741
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    .line 4744
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_4

    .line 4745
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/oppo/camera/ui/e;->y:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/levelcontrol/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;Lcom/oppo/camera/ui/preview/i;)Lcom/oppo/camera/ui/preview/i;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    return-object p1
.end method

.method private a(ZIZZ)V
    .locals 0

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    .line 3803
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_0

    .line 3804
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->f()V

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 3831
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_6

    .line 3832
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->f()V

    goto :goto_0

    .line 3812
    :cond_3
    iget-boolean p2, p0, Lcom/oppo/camera/ui/e;->ab:Z

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    .line 3813
    invoke-virtual {p0, p1, p3}, Lcom/oppo/camera/ui/e;->a(IZ)V

    .line 3815
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_6

    .line 3816
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->f()V

    goto :goto_0

    .line 3819
    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 3821
    invoke-virtual {p2, p3, p3}, Lcom/oppo/camera/ui/control/b;->a(ZZ)V

    goto :goto_0

    .line 3823
    :cond_5
    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/oppo/camera/ui/e;->k:Z

    return p1
.end method

.method private aX()V
    .locals 3

    .line 2983
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2987
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_2

    .line 2988
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    .line 2989
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 2991
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2992
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 2994
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2997
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 2999
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_rotate_hint_view"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3000
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_2
    return-void
.end method

.method private aY()V
    .locals 3

    .line 3099
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 3103
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3104
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3105
    iput-object v2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 3106
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a;->b(I)V

    .line 3109
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    .line 3110
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3111
    iput-object v2, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 3114
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_3

    .line 3115
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3116
    iput-object v2, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 3119
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_4

    .line 3120
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3121
    iput-object v2, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_4
    return-void
.end method

.method private aZ()V
    .locals 3

    .line 3355
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 3359
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_2

    .line 3360
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    .line 3361
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 3363
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3364
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 3366
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3369
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 3371
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_rotate_hint_view"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3372
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/e;I)I
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->w(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/e;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->Q(Z)V

    return-void
.end method

.method private b(ZI)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 3790
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_4

    .line 3791
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->e()V

    goto :goto_0

    .line 3771
    :cond_1
    iget-boolean p2, p0, Lcom/oppo/camera/ui/e;->ab:Z

    if-eqz p2, :cond_2

    .line 3772
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->K(Z)V

    .line 3774
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_4

    .line 3775
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->e()V

    goto :goto_0

    .line 3778
    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 3780
    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/b;->e()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 3782
    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/e;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oppo/camera/ui/e;->j:Z

    return p0
.end method

.method private ba()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "updateFaceBeautyEnterButton"

    .line 3757
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    .line 3760
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->x()I

    move-result v0

    if-nez v0, :cond_0

    .line 3761
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const v1, 0x7f0702ba

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 3763
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const v1, 0x7f0702bb

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private bb()V
    .locals 3

    .line 3929
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-nez v0, :cond_0

    .line 3930
    new-instance v0, Lcom/oppo/camera/ui/modepanel/c;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/b;->A()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/modepanel/c;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    .line 3932
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    new-instance v1, Lcom/oppo/camera/ui/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/e$a;-><init>(Lcom/oppo/camera/ui/e;Lcom/oppo/camera/ui/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/c;->a(Lcom/oppo/camera/ui/modepanel/d$a;)V

    :cond_0
    return-void
.end method

.method private bc()V
    .locals 7

    .line 3982
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    const v2, 0x7f05001d

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 3983
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v4, 0x7f0800b0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3984
    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3985
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    .line 3986
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3987
    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v5

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    .line 3988
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3989
    iget-object v5, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3990
    iget-object v5, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3991
    iget-object v5, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3994
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 3995
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v4, 0x7f080150

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3996
    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3997
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    .line 3998
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3999
    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v5

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 4000
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4001
    iget-object v3, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4002
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4003
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private bd()V
    .locals 1

    .line 4327
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    .line 4328
    iget v0, p0, Lcom/oppo/camera/ui/e;->x:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->v(I)V

    :cond_0
    return-void
.end method

.method private be()Z
    .locals 4

    .line 4389
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f0f018b

    .line 4390
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_tap_shutter_key"

    .line 4389
    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4391
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    .line 4392
    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_camera_tap_shutter_key"

    .line 4391
    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private bf()V
    .locals 5

    .line 4558
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v3, "addUpModeHintView"

    .line 4559
    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b002e

    const/4 v4, 0x0

    .line 4562
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 4563
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setChangeHintColor(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4567
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4568
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    .line 4569
    iget-object v3, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 4571
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 4578
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    .line 4579
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 4580
    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4581
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    .line 4582
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_3
    return-void
.end method

.method private bg()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "exitFromMoreMode"

    .line 4587
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4589
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "exitFromMoreMode, not in MoreMode"

    .line 4590
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4595
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "exitFromMoreMode, Multiple finger operation in Headline"

    .line 4596
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4598
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->n(Z)V

    return-void

    .line 4602
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    .line 4604
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->O(Z)V

    .line 4605
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->P(Z)V

    .line 4607
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_2

    .line 4608
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->z()V

    :cond_2
    return-void
.end method

.method private bh()V
    .locals 4

    .line 4641
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-nez v0, :cond_0

    .line 4642
    new-instance v0, Lcom/oppo/camera/ui/modepanel/f;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/modepanel/f;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    .line 4643
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    new-instance v1, Lcom/oppo/camera/ui/e$35;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$35;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->a(Lcom/oppo/camera/ui/modepanel/f$b;)V

    :cond_0
    return-void
.end method

.method private bi()V
    .locals 1

    .line 4688
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    .line 4689
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->a()V

    .line 4690
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    :cond_0
    return-void
.end method

.method private bj()V
    .locals 2

    .line 4695
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "showSettingMenu"

    .line 4696
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4698
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->k()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/e;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->v(I)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/e;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->R(Z)V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/ui/e;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/oppo/camera/ui/e;->x:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/e;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/e;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bd()V

    return-void
.end method

.method private e(Ljava/lang/String;Z)V
    .locals 1

    .line 3447
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    if-nez v0, :cond_0

    const-string p1, "CameraUIManager"

    const-string p2, "updateBubbleValue, mPreference null"

    .line 3448
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3453
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    .line 3454
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private f(II)Landroid/widget/PopupWindow;
    .locals 3

    .line 3407
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3408
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const p1, 0x7f08006e

    .line 3409
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 3410
    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(I)V

    .line 3412
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x2

    .line 3413
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3414
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3415
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3416
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 3417
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 p2, 0x1

    .line 3418
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const p2, 0x7f100101

    .line 3419
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-object p1
.end method

.method static synthetic f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method private f(IZ)V
    .locals 12

    .line 3739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyEnterButtonVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3742
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_0
    const-wide/16 v0, 0xa0

    if-nez p1, :cond_1

    move-wide v9, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-wide v9, v2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x50

    :goto_1
    move-wide v7, v0

    if-eqz p2, :cond_3

    .line 3748
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 3749
    iget-object v4, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v6, 0x0

    const v0, 0x7f01002c

    .line 3750
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    move v5, p1

    .line 3749
    invoke-static/range {v4 .. v11}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 3752
    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a$b;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->ae:Lcom/oppo/camera/ui/preview/a$b;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->af:Lcom/oppo/camera/ui/a;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/a/g;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/ui/e;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->ba()V

    return-void
.end method

.method static synthetic l(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    return-object p0
.end method

.method static synthetic m(Lcom/oppo/camera/ui/e;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic n(Lcom/oppo/camera/ui/e;)Landroid/view/ViewGroup;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    return-object p0
.end method

.method static synthetic p(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/i;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    return-object p0
.end method

.method static synthetic q(Lcom/oppo/camera/ui/e;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oppo/camera/ui/e;->v:I

    return p0
.end method

.method static synthetic r(Lcom/oppo/camera/ui/e;)Landroid/app/Activity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic t(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic u(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method private u(I)V
    .locals 1

    .line 357
    invoke-static {p1}, Lcom/oppo/camera/o/d;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 358
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->D(Z)V

    .line 360
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->m(Z)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/oppo/camera/ui/e;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private v(I)V
    .locals 3

    .line 4333
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    iget v2, p0, Lcom/oppo/camera/ui/e;->y:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/ui/preview/a;->a(III)V

    .line 4334
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->c()I

    move-result v0

    if-nez p1, :cond_0

    .line 4337
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    goto :goto_0

    .line 4338
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_1

    .line 4339
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->w(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private w(I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4358
    iget v0, p0, Lcom/oppo/camera/ui/e;->z:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic w(Lcom/oppo/camera/ui/e;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oppo/camera/ui/e;->ab:Z

    return p0
.end method

.method static synthetic x(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/modepanel/f;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/ui/e;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bj()V

    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/ui/e;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bg()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 4845
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 4846
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->H()V

    :cond_0
    return-void
.end method

.method public A(Z)V
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1929
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->e(Z)V

    :cond_0
    return-void
.end method

.method public B(Z)V
    .locals 1

    .line 2571
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2572
    new-instance v0, Lcom/oppo/camera/ui/e$7;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$7;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->a()Z

    move-result v0

    return v0
.end method

.method public C()V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/i;->b()V

    :cond_0
    return-void
.end method

.method public C(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2712
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    .line 2715
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    .line 2716
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 2717
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    .line 2718
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 2719
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    return-void
.end method

.method public D()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/i;->c()V

    .line 782
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 783
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    :cond_0
    return-void
.end method

.method public D(Z)V
    .locals 1

    .line 2782
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2783
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->e(Z)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 902
    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/oppo/camera/ui/e;->v:I

    if-eq v0, v1, :cond_1

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public E(Z)V
    .locals 3

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenTorch, preflashing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenTorchView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aw()V

    .line 2839
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2841
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f05017b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 2843
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f050176

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2846
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2849
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->r(Z)V

    return-void
.end method

.method public F()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "onStop"

    .line 1033
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->M(Z)V

    .line 1037
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ab()V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    .line 1042
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->e()V

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_2

    .line 1046
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->g()V

    :cond_2
    return-void
.end method

.method public F(Z)V
    .locals 1

    .line 3093
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "onDestroy"

    .line 1051
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1053
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 1054
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    .line 1056
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->h()V

    .line 1058
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    .line 1061
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v1, :cond_1

    .line 1062
    invoke-virtual {v1}, Lcom/oppo/camera/ui/modepanel/f;->d()V

    .line 1063
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    .line 1066
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_2

    .line 1067
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/i;->d()V

    .line 1068
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    .line 1071
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_3

    .line 1072
    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/d;->f()V

    .line 1073
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    .line 1076
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_4

    .line 1077
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/i;->d()V

    .line 1078
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    .line 1081
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 1082
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1083
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1084
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    :cond_5
    return-void
.end method

.method public G(Z)V
    .locals 1

    .line 3468
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3469
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->h(Z)V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->b()V

    :cond_0
    return-void
.end method

.method public H(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3854
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->k(Z)V

    .line 3857
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    .line 3858
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    :cond_1
    return-void
.end method

.method public I()V
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->i()V

    :cond_0
    return-void
.end method

.method public I(Z)V
    .locals 3

    .line 3882
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3883
    invoke-virtual {p0, v1, v1}, Lcom/oppo/camera/ui/e;->k(ZZ)V

    .line 3884
    invoke-virtual {p0, v2, v2}, Lcom/oppo/camera/ui/e;->j(ZZ)V

    :cond_0
    const/4 v0, 0x4

    .line 3887
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->h(I)V

    .line 3888
    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/ui/e;->b(IZ)V

    const/16 p1, 0x8

    .line 3889
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(I)V

    .line 3890
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->a(I)V

    .line 3891
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->K(Z)V

    .line 3892
    invoke-virtual {p0, v2, v2}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    .line 3893
    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    .line 3894
    invoke-virtual {p0, v2, v2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 3895
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->e(I)V

    .line 3896
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 3897
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->o(Z)V

    .line 3899
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3900
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->l(Z)V

    goto :goto_0

    .line 3902
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 3905
    :goto_0
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    return-void
.end method

.method public J()V
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->j()V

    :cond_0
    return-void
.end method

.method public J(Z)V
    .locals 1

    .line 3943
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    .line 3944
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public K(Z)V
    .locals 1

    .line 3949
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    .line 3950
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public K()Z
    .locals 1

    .line 1210
    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    return v0
.end method

.method public L(Z)V
    .locals 1

    .line 3964
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    .line 3965
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public L()Z
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 1232
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()Lcom/oppo/camera/ui/control/ShutterButton;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->l()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M(Z)V
    .locals 1

    .line 4313
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    .line 4314
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->a()V

    .line 4315
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4319
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aN()V

    :cond_1
    const/4 p1, 0x0

    .line 4322
    iput p1, p0, Lcom/oppo/camera/ui/e;->x:I

    .line 4323
    iput-boolean p1, p0, Lcom/oppo/camera/ui/e;->k:Z

    return-void
.end method

.method public N()Lcom/oppo/camera/ui/control/e;
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->m()Lcom/oppo/camera/ui/control/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public N(Z)V
    .locals 1

    .line 4374
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->f(Z)V

    return-void
.end method

.method public O()I
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O(Z)V
    .locals 2

    .line 4703
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "backToLastHeadlineIndex"

    .line 4704
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4706
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->g(Z)V

    :cond_0
    return-void
.end method

.method public P()Landroid/view/Surface;
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->u()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public P(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 4798
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->R(Z)V

    .line 4799
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bj()V

    const/4 v1, 0x1

    .line 4800
    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 4801
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 4803
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v1, :cond_0

    const-string v2, "func_face_beauty_process"

    .line 4804
    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4806
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    :cond_0
    return-void
.end method

.method public Q()Landroid/util/Size;
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->v()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public R()Z
    .locals 1

    .line 1385
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    return v0
.end method

.method public S()V
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->f()V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->g()V

    :cond_0
    return-void
.end method

.method public U()I
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V()Z
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 1665
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->i()Z

    move-result v0

    return v0

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 1669
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->i()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public X()I
    .locals 1

    .line 1676
    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v0

    return v0
.end method

.method public Y()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "afterEnterCameraStartPreviewDone"

    .line 1805
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1808
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1836
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->x()V

    :cond_0
    return-void
.end method

.method public a()Lcom/oppo/camera/gl/GLRootView;
    .locals 1

    .line 2488
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->D()Lcom/oppo/camera/gl/GLRootView;

    move-result-object v0

    return-object v0
.end method

.method public a(BZ)V
    .locals 1

    .line 2776
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 2777
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1447
    new-instance v1, Lcom/oppo/camera/ui/e$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/e$5;-><init>(Lcom/oppo/camera/ui/e;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 2795
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2797
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    goto :goto_0

    .line 2799
    :cond_0
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 2481
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2482
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IIZZZ)V
    .locals 2

    .line 2871
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 2875
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2876
    new-instance v1, Lcom/oppo/camera/ui/e$10;

    invoke-direct {v1, p0, p1, p5, p3}, Lcom/oppo/camera/ui/e$10;-><init>(Lcom/oppo/camera/ui/e;IZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    if-lez p2, :cond_2

    .line 2888
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 2889
    new-instance p3, Lcom/oppo/camera/ui/e$11;

    invoke-direct {p3, p0, p2, p4}, Lcom/oppo/camera/ui/e$11;-><init>(Lcom/oppo/camera/ui/e;IZ)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 2806
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 2807
    invoke-virtual/range {v0 .. v7}, Lcom/oppo/camera/ui/control/b;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 4635
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 4636
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->a()V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(Z)V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_2

    .line 797
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/control/b;->a(ILjava/lang/String;Z)V

    .line 800
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz p1, :cond_3

    .line 801
    invoke-virtual {p1}, Lcom/oppo/camera/ui/modepanel/f;->c()V

    .line 802
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    const/4 p1, 0x1

    .line 803
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->P(Z)V

    .line 805
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_3

    .line 806
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->z()V

    .line 810
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz p1, :cond_4

    .line 811
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a()V

    .line 812
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const-string p2, "pref_filter_menu"

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V

    .line 813
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const-string p2, "pref_portrait_new_style_menu"

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V

    .line 814
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const-string p2, "pref_video_filter_menu"

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V

    :cond_4
    return-void
.end method

.method public a(IZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 2762
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->J(Z)V

    goto :goto_0

    .line 2764
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->K(Z)V

    :goto_0
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 2

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGradienterView, orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "professional"

    .line 770
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 771
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/i;->setOrientation(I)V

    .line 772
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/i;->b()V

    goto :goto_0

    .line 774
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/i;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IZZ)V
    .locals 4

    .line 2413
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2414
    iget-boolean v3, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, p1, p3, v3}, Lcom/oppo/camera/ui/menu/setting/i;->b(IZZ)V

    .line 2418
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_3

    .line 2419
    iget-boolean v3, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, p1, p3, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(IZZ)V

    :cond_3
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_0

    .line 1954
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/m;->a(JZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 2474
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2475
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 2596
    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    .line 2601
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1
    const-string v0, "pref_camera_torch_mode_key"

    .line 2604
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_4

    .line 2605
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    .line 2606
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f0196

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2605
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2608
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2609
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ax()V

    goto :goto_0

    .line 2611
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_3

    const-string p2, "func_torch_soft_light"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2612
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aw()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "pref_camera_flashmode_key"

    .line 2619
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2620
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "pref_high_resolution_key"

    .line 2621
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 2622
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2623
    invoke-virtual {p0, p2, v2}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2625
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2626
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "CameraUIManager"

    const-string v1, "showPostCaptureAlert"

    .line 2073
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2075
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    .line 2077
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ay()V

    .line 2079
    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    .line 2083
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2084
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->l(Z)V

    goto :goto_0

    .line 2086
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 2089
    :goto_0
    invoke-virtual {p0, v0, v0, v2, v2}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 2091
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    .line 2092
    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2094
    iget v1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-static {v1}, Lcom/oppo/camera/o/d;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2095
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    goto :goto_1

    .line 2097
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/i;->b(F)V

    .line 2101
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_4

    .line 2102
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->z()V

    .line 2105
    :cond_4
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/e;->a(I)V

    .line 2107
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_6

    .line 2108
    iget v1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-static {v1}, Lcom/oppo/camera/o/d;->d(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2109
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v3, v0}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    .line 2112
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->q()V

    .line 2115
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_7

    .line 2116
    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/graphics/Bitmap;)V

    .line 2118
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_7

    .line 2119
    invoke-virtual {p1, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(ZZ)V

    .line 2123
    :cond_7
    invoke-virtual {p0, v0, v2, v2}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    .line 2124
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 2125
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aJ()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V
    .locals 6

    .line 2770
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2771
    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .line 1433
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1434
    new-instance v1, Lcom/oppo/camera/ui/e$4;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/e$4;-><init>(Lcom/oppo/camera/ui/e;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    .line 1899
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/util/Size;Z)V

    :cond_0
    const/4 p2, 0x4

    .line 1903
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    .line 1905
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    .line 1909
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->b(Landroid/util/Size;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Landroid/view/View;III)V
    .locals 6

    .line 3143
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    const-string v0, "CameraUIManager"

    if-nez p1, :cond_0

    .line 3144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showBubble, mCameraRootView: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x3

    const/16 v1, 0x55

    const-string v2, ", exception: "

    const-string v3, "showBubble, type: "

    const v4, 0x7f08006c

    if-eq p2, p1, :cond_a

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/4 p1, 0x5

    if-eq p2, p1, :cond_4

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    goto/16 :goto_0

    .line 3252
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    if-nez p1, :cond_2

    const p1, 0x7f0701c8

    const v1, 0x7f0f001e

    .line 3253
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    .line 3254
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 3255
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3256
    new-instance v1, Lcom/oppo/camera/ui/e$21;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$21;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3262
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/oppo/camera/ui/e$22;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$22;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 3271
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3273
    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    const/16 v4, 0x53

    invoke-virtual {p1, v1, v4, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 3275
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3276
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3279
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3218
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    if-nez p1, :cond_5

    const p1, 0x7f0701ca

    const v5, 0x7f0f0027

    .line 3219
    invoke-direct {p0, p1, v5}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    .line 3220
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 3221
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3222
    new-instance v4, Lcom/oppo/camera/ui/e$19;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$19;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3228
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/oppo/camera/ui/e$20;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$20;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 3237
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3239
    :try_start_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v1, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 3241
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 3242
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3245
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3184
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    if-nez p1, :cond_8

    const p1, 0x7f0701c9

    const v1, 0x7f0f008e

    .line 3185
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    .line 3186
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3187
    new-instance v1, Lcom/oppo/camera/ui/e$17;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$17;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3193
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/oppo/camera/ui/e$18;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$18;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 3202
    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3204
    :try_start_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    const/16 v4, 0x51

    invoke-virtual {p1, v1, v4, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 3207
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 3208
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3211
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3151
    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    if-nez p1, :cond_b

    const p1, 0x7f0701cb

    const v5, 0x7f0f008f

    .line 3152
    invoke-direct {p0, p1, v5}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    .line 3153
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3154
    new-instance v4, Lcom/oppo/camera/ui/e$15;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$15;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3160
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/oppo/camera/ui/e$16;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$16;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 3169
    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3171
    :try_start_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v1, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 3173
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 3174
    iget-object p3, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3177
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    .line 1300
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1306
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f0801dc

    .line 1309
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1310
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1313
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1314
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/RotateImageView;)V
    .locals 1

    .line 4256
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 4257
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->a(Lcom/oppo/camera/ui/RotateImageView;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/a;)V
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;)V
    .locals 1

    .line 2740
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 2741
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 2

    .line 2747
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2748
    new-instance v1, Lcom/oppo/camera/ui/e$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/ui/e$9;-><init>(Lcom/oppo/camera/ui/e;Lcom/oppo/camera/ui/control/c;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/d;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/d;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/e;)V
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1821
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/f;)V
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 4

    const-string v0, "CameraUIManager"

    const-string v1, "onCreate"

    .line 622
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UIManager.onCreate"

    .line 624
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 626
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->h:Z

    .line 627
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    .line 629
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/ui/preview/a/i;)V

    .line 633
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_1

    .line 634
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->c()V

    .line 637
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_2

    .line 638
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->a()V

    .line 641
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_3

    .line 642
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->a()V

    .line 645
    :cond_3
    new-instance p1, Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, v1, v2, v3}, Lcom/oppo/camera/ui/preview/a;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/oppo/camera/i;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    .line 646
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ae:Lcom/oppo/camera/ui/preview/a$b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a;->a(Lcom/oppo/camera/ui/preview/a$b;)V

    .line 647
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ag:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a;->a(Landroid/view/View$OnLayoutChangeListener;)V

    .line 648
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    .line 649
    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a;->e()I

    move-result v2

    sub-int/2addr v1, v2

    .line 648
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a;->c(I)V

    .line 650
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a;->e()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/e;->z:I

    .line 652
    new-instance p1, Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    .line 653
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setCameraEntryType(I)V

    .line 654
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(I)V

    .line 655
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->al:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setFilterEffectMenuListener(Lcom/oppo/camera/ui/menu/levelcontrol/d$a;)V

    .line 657
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f0800e5

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/RotateImageView;

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    .line 658
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->aj:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    new-instance p1, Lcom/oppo/camera/ui/menu/a/g;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->ak:Lcom/oppo/camera/ui/menu/a/g$a;

    iget v3, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-direct {p1, v1, v2, v3}, Lcom/oppo/camera/ui/menu/a/g;-><init>(Landroid/app/Activity;Lcom/oppo/camera/ui/menu/a/g$a;I)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    .line 661
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bc()V

    .line 663
    iget p1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 664
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bb()V

    .line 665
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bh()V

    .line 668
    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/e$b;)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/ui/preview/e$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Float;I)V
    .locals 2

    .line 1941
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-nez v0, :cond_0

    .line 1942
    new-instance v0, Lcom/oppo/camera/ui/preview/m;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/oppo/camera/ui/preview/m;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_1

    .line 1946
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(I)V

    .line 1947
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/m;->a(Ljava/lang/Float;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2733
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 2734
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 2512
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2514
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2516
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 2520
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(I)V

    const-string p1, "pref_portrait_new_style_menu"

    .line 2522
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2523
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "pref_filter_menu"

    .line 2524
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2525
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "pref_video_filter_menu"

    .line 2526
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2527
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 6

    .line 4529
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 4533
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4537
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bf()V

    .line 4538
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0501d2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/ui/control/c;Z)V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0, p2, p3}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;Z)V

    .line 1163
    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-eq p2, v1, :cond_0

    iget-boolean p2, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-nez p2, :cond_0

    .line 1164
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/b;->b()V

    .line 1168
    :cond_0
    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 p3, 0x1

    if-eq p2, v1, :cond_1

    .line 1169
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {p2}, Lcom/oppo/camera/ui/d;->k()V

    .line 1170
    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/e;->w(Z)V

    .line 1173
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/oppo/camera/ui/e;->c(Ljava/lang/String;Z)V

    .line 1175
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string p2, "pref_filter_process_key"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1176
    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/e;->k(Z)V

    goto :goto_0

    .line 1178
    :cond_2
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 1179
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 1182
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v0, "func_face_beauty_process"

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1183
    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/e;->m(Z)V

    goto :goto_1

    .line 1185
    :cond_3
    invoke-virtual {p0, p2, p2, p2, p2}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 1188
    :goto_1
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->d(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4447
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4448
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4451
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addMenuToExpandMenuMap, Map size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraUIManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2315
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2316
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2320
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_2

    .line 2324
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2397
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2342
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2346
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Ljava/util/List;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1331
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1333
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const v2, 0x7f0801dc

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    .line 1338
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    if-nez p2, :cond_1

    .line 1341
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1344
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    move v3, v4

    .line 1348
    :cond_2
    new-instance v2, Lcom/oppo/camera/ui/e$3;

    invoke-direct {v2, p0, v1, p2}, Lcom/oppo/camera/ui/e$3;-><init>(Lcom/oppo/camera/ui/e;Landroid/view/View;Z)V

    const-wide/16 v4, 0x12c

    invoke-static {v1, v3, v2, v4, v5}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 1369
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1373
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1376
    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 2705
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    .line 2706
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 732
    new-instance v1, Lcom/oppo/camera/ui/e$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/oppo/camera/ui/e$2;-><init>(Lcom/oppo/camera/ui/e;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1548
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1549
    new-instance v1, Lcom/oppo/camera/ui/e$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/ui/e$6;-><init>(Lcom/oppo/camera/ui/e;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2915
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2916
    new-instance v0, Lcom/oppo/camera/ui/e$13;

    invoke-direct {v0, p0, p3}, Lcom/oppo/camera/ui/e$13;-><init>(Lcom/oppo/camera/ui/e;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2926
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 2927
    new-instance p2, Lcom/oppo/camera/ui/e$14;

    invoke-direct {p2, p0, p3}, Lcom/oppo/camera/ui/e$14;-><init>(Lcom/oppo/camera/ui/e;Z)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(ZZZZ)V
    .locals 2

    .line 3561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needClose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showEnterButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3565
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3566
    invoke-virtual {p0, p1, p3, p4}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    goto :goto_0

    .line 3568
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/16 p3, 0x8

    invoke-virtual {p2, p3, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(IZ)V

    .line 3570
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3571
    invoke-direct {p0, p3, p1}, Lcom/oppo/camera/ui/e;->f(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZZZZZ)V
    .locals 6

    const-string v0, "CameraUIManager"

    const-string v1, "onResumeMessage"

    .line 820
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->j:Z

    .line 824
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v2

    invoke-virtual {v1, p3, v2, p5, p6}, Lcom/oppo/camera/ui/control/b;->a(ZZZZ)V

    .line 828
    :cond_0
    iget-object p5, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p5, :cond_1

    .line 829
    invoke-virtual {p5}, Lcom/oppo/camera/ui/menu/setting/i;->b()V

    .line 832
    :cond_1
    iget-object p5, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p5, :cond_2

    .line 833
    invoke-virtual {p5}, Lcom/oppo/camera/ui/menu/setting/i;->b()V

    .line 836
    :cond_2
    iget-boolean p5, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez p5, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 837
    invoke-virtual {p0, p4}, Lcom/oppo/camera/ui/e;->v(Z)V

    .line 840
    :cond_3
    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 841
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 842
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 845
    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    const/4 p3, 0x2

    if-eqz p2, :cond_6

    .line 846
    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/d;->s()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne p2, p3, :cond_5

    .line 847
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ab()V

    .line 850
    :cond_5
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/d;->b()V

    .line 853
    :cond_6
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_7

    .line 854
    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    .line 857
    :cond_7
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_8

    .line 858
    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    .line 861
    :cond_8
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_9

    .line 862
    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    .line 865
    :cond_9
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_a

    .line 866
    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    .line 869
    :cond_a
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_b

    .line 870
    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    .line 873
    :cond_b
    sget-boolean p2, Lcom/oppo/camera/Camera;->a:Z

    if-nez p2, :cond_c

    const p2, 0x7f0f00f3

    .line 874
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->b(I)V

    .line 877
    :cond_c
    sget-boolean p2, Lcom/oppo/camera/Camera;->b:Z

    if-nez p2, :cond_d

    const p2, 0x7f0f00e1

    .line 878
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->b(I)V

    .line 881
    :cond_d
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ay()V

    .line 882
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->G(Z)V

    .line 884
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const p4, 0x7f0f018b

    .line 885
    invoke-virtual {p2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "pref_camera_tap_shutter_key"

    .line 884
    invoke-virtual {p1, p4, p2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 887
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {p2, p4}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_e

    const-string p2, "on"

    .line 888
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 889
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->be()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-byte p1, p0, Lcom/oppo/camera/ui/e;->R:B

    if-eq p1, p3, :cond_e

    .line 891
    iput-byte p4, p0, Lcom/oppo/camera/ui/e;->R:B

    .line 894
    :cond_e
    iget-byte p1, p0, Lcom/oppo/camera/ui/e;->R:B

    if-ne p1, p4, :cond_f

    const v1, 0x7f0f0189

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 895
    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    .line 896
    iput-byte p3, p0, Lcom/oppo/camera/ui/e;->R:B

    :cond_f
    return-void
.end method

.method public a([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a([Landroid/hardware/camera2/params/Face;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/util/Size;)Z
    .locals 1

    .line 1848
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1849
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/util/Size;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2445
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2449
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public aA()V
    .locals 1

    .line 3474
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 3475
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e()V

    :cond_0
    return-void
.end method

.method public aB()Z
    .locals 1

    .line 3480
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 3481
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aC()V
    .locals 2

    .line 3843
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3844
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 3847
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3848
    invoke-virtual {p0, v0, v0, v1, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :cond_1
    return-void
.end method

.method public aD()V
    .locals 1

    .line 3870
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3871
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->B(Z)V

    :cond_0
    return-void
.end method

.method public aE()V
    .locals 1

    .line 3909
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3910
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->H()V

    :cond_0
    return-void
.end method

.method public aF()V
    .locals 1

    .line 3915
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3916
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->I()V

    :cond_0
    return-void
.end method

.method public aG()Z
    .locals 1

    .line 3956
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    .line 3957
    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/c;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aH()V
    .locals 4

    .line 4226
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->k()V

    .line 4227
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->k()V

    const/4 v0, 0x1

    .line 4228
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->k(Z)V

    .line 4229
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/control/b;->e(Z)V

    .line 4231
    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 4232
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/control/b;->d(I)V

    .line 4233
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/control/b;->i(Z)V

    .line 4236
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CameraUIManager"

    const-string v3, "showAllCameraView, mEffectLevelMenu is open, hideRollGLSurfaceView"

    .line 4237
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->r(Z)V

    .line 4242
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    return-void
.end method

.method public aI()V
    .locals 1

    const/4 v0, 0x1

    .line 4309
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->M(Z)V

    return-void
.end method

.method public aJ()V
    .locals 1

    .line 4344
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    .line 4345
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->b()V

    .line 4346
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    :cond_0
    return-void
.end method

.method public aK()V
    .locals 2

    .line 4351
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4352
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    :cond_0
    return-void
.end method

.method public aL()[Landroid/graphics/Rect;
    .locals 1

    .line 4366
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 4367
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->M()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public aM()V
    .locals 1

    .line 4378
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->I()V

    return-void
.end method

.method public aN()V
    .locals 5

    .line 4500
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 4504
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    const-string v3, "CameraUIManager"

    if-eqz v0, :cond_5

    .line 4507
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-nez v0, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    .line 4509
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideUpModeHintView, mAISceneUI.isShown: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUpModeHintView.isShow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 4510
    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4509
    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4512
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideUpModeHintView, mUpHintView.isShown: true, mUpModeHintView.isShow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 4513
    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4512
    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    :goto_4
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v2

    if-ne v0, v2, :cond_6

    return-void

    :cond_6
    if-eqz v0, :cond_7

    .line 4520
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4521
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->c()Z

    goto :goto_5

    .line 4523
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(ZZ)V

    :cond_8
    :goto_5
    return-void
.end method

.method public aO()Z
    .locals 1

    .line 4711
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 4712
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->k()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aP()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4719
    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 4720
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 4722
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v2, "func_face_beauty_process"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4723
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    :cond_0
    return-void
.end method

.method public aQ()Z
    .locals 1

    .line 4750
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aR()V
    .locals 2

    .line 4762
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "hideMoreView"

    .line 4763
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    :cond_0
    return-void
.end method

.method public aS()V
    .locals 3

    const-string v0, "CameraUIManager"

    const-string v1, "onMoreModeShown"

    .line 4770
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4772
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->R(Z)V

    .line 4774
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_0

    .line 4775
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/i;->j()V

    .line 4778
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->d()V

    .line 4779
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bi()V

    const/4 v1, 0x0

    .line 4780
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->a(Z)V

    .line 4781
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->p(Z)V

    .line 4782
    invoke-virtual {p0, v0, v0, v1}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    .line 4783
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 4784
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->F(Z)V

    .line 4785
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 4786
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 4788
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_1

    .line 4789
    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/ui/control/b;->e(ZZ)V

    .line 4792
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4793
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->z()V

    :cond_2
    return-void
.end method

.method public aT()Z
    .locals 1

    .line 4811
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    .line 4812
    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/f;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aU()Z
    .locals 1

    .line 4819
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 4820
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aV()Z
    .locals 1

    .line 4827
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 4828
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/f;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aW()Z
    .locals 1

    .line 4835
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aa()V
    .locals 1

    .line 1934
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->B()V

    :cond_0
    return-void
.end method

.method public ab()V
    .locals 3

    const-string v0, "CameraUIManager"

    const-string v1, "hidePostCaptureAlert"

    .line 2044
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2046
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    .line 2048
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    .line 2049
    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/d;->r()V

    .line 2050
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aN()V

    :cond_0
    const/4 v1, 0x1

    .line 2053
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->k(Z)V

    .line 2054
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->m(Z)V

    .line 2056
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_1

    .line 2057
    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    .line 2058
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2061
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_2

    .line 2062
    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/b;->r()V

    .line 2065
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_3

    .line 2066
    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2069
    :cond_3
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->a(I)V

    return-void
.end method

.method public ac()V
    .locals 3

    const-string v0, "CameraUIManager"

    const-string v1, "hideVideoAlert"

    .line 2147
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2149
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    .line 2151
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    .line 2152
    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/d;->t()V

    .line 2155
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_1

    .line 2156
    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->t()V

    .line 2159
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 2160
    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2161
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_2
    return-void
.end method

.method public ad()V
    .locals 1

    .line 2198
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2199
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->A()V

    :cond_0
    return-void
.end method

.method public ae()Z
    .locals 1

    .line 2241
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2242
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->l()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public af()V
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2251
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->b()V

    :cond_0
    return-void
.end method

.method public ag()V
    .locals 2

    .line 2257
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 2258
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    .line 2259
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 2260
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->i()V

    :cond_0
    return-void
.end method

.method public ah()V
    .locals 1

    .line 2268
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2269
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->m()V

    :cond_0
    return-void
.end method

.method public ai()V
    .locals 1

    .line 2275
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2276
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->n()V

    :cond_0
    return-void
.end method

.method public aj()I
    .locals 1

    .line 2282
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2283
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ak()I
    .locals 1

    .line 2291
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2292
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public al()V
    .locals 1

    .line 2308
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2309
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_0
    return-void
.end method

.method public am()I
    .locals 1

    .line 2537
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2538
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->l()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public an()I
    .locals 1

    .line 2545
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 2546
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->y()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ao()V
    .locals 8

    .line 2553
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    .line 2558
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->l()V

    .line 2561
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->i()V

    .line 2562
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    const v7, 0x7f0501d3

    const v6, 0x7f0703ad

    .line 2566
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f0f0194

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public ap()V
    .locals 1

    .line 2584
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->o()V

    :cond_0
    return-void
.end method

.method public aq()V
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2591
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->p()V

    :cond_0
    return-void
.end method

.method public ar()V
    .locals 1

    .line 2632
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 2633
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->v()V

    :cond_0
    return-void
.end method

.method public as()Z
    .locals 3

    .line 2638
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_2

    .line 2639
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 2643
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2644
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bg()V

    return v1

    .line 2648
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2649
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2650
    invoke-virtual {p0, v1, v1, v2}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public at()V
    .locals 4

    .line 2660
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2661
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    .line 2662
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 2664
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 2667
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2671
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f0f0114

    .line 2672
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 2671
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2674
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2675
    new-instance v2, Lcom/oppo/camera/ui/e$8;

    invoke-direct {v2, p0, v0}, Lcom/oppo/camera/ui/e$8;-><init>(Lcom/oppo/camera/ui/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2697
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    .line 2698
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 2699
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    const v1, 0x7f0702c9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IZZ)V

    :cond_2
    return-void
.end method

.method public au()Z
    .locals 2

    .line 2723
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "beforeCameraShutterButtonClick(), screen torch is filling.."

    .line 2724
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public av()V
    .locals 1

    .line 2788
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2789
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->H()V

    :cond_0
    return-void
.end method

.method public aw()V
    .locals 3

    .line 2812
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2816
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2817
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009f

    .line 2818
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2819
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public ax()V
    .locals 2

    .line 2824
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2828
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2829
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2830
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public ay()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "stopScreenTorch"

    .line 2853
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2856
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public az()Z
    .locals 1

    .line 2861
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2862
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/ViewGroup;
    .locals 1

    .line 2493
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public b(F)V
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1460
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->b(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 2940
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    .line 2941
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(I)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 3876
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3877
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 2

    .line 1750
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1751
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public b(JZ)V
    .locals 1

    .line 1985
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 1986
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/f;->a(JZ)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "CameraUIManager"

    const-string v1, "showVideoAlert"

    .line 2166
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2168
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    .line 2170
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    .line 2171
    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/graphics/Bitmap;)V

    .line 2174
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_1

    .line 2175
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->s()V

    .line 2178
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 2179
    invoke-virtual {p1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2180
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    .line 2182
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f06041b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 2185
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p1, v3, v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(ZZ)V

    .line 2189
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_3

    .line 2190
    invoke-virtual {p1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2191
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    .line 2194
    :cond_3
    invoke-virtual {p0, v0, v0, v2}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    return-void
.end method

.method public b(Landroid/util/Size;)V
    .locals 5

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEffectMenuPreviewSizeChanged, previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    .line 1856
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_2

    .line 1860
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->getTextureWidth()I

    move-result v0

    .line 1861
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->getTextureHeight()I

    move-result v1

    .line 1863
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1864
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 1866
    iget v3, p0, Lcom/oppo/camera/ui/e;->w:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    move v2, p1

    move p1, v4

    :goto_0
    if-ne v0, p1, :cond_1

    if-eq v1, v2, :cond_2

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(II)V

    :cond_2
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;)V
    .locals 3

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToModeType, buttonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", insideColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    .line 1134
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    const/4 v0, 0x0

    .line 1139
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->k:Z

    .line 1140
    iput v0, p0, Lcom/oppo/camera/ui/e;->x:I

    .line 1142
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1143
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->B(Z)V

    .line 1150
    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 1154
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz p1, :cond_3

    .line 1155
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->d()V

    :cond_3
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 6

    const-string v0, "CameraUIManager"

    const-string v1, "onPause"

    .line 914
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 916
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->j:Z

    const/4 v1, 0x0

    .line 917
    iput-byte v1, p0, Lcom/oppo/camera/ui/e;->R:B

    .line 918
    iput v1, p0, Lcom/oppo/camera/ui/e;->y:I

    .line 919
    iput v1, p0, Lcom/oppo/camera/ui/e;->x:I

    .line 920
    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->k:Z

    const/4 v2, -0x1

    .line 921
    iput v2, p0, Lcom/oppo/camera/ui/e;->v:I

    .line 923
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->be()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-virtual {v2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v2

    .line 925
    iget-object v3, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v5, 0x7f0f018b

    .line 927
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_tap_shutter_key"

    .line 926
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_camera_tap_shutter_key"

    .line 925
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 928
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 931
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 935
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_2

    .line 936
    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/i;->c()V

    .line 939
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->L(Z)V

    .line 941
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_3

    .line 942
    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/i;->c()V

    .line 945
    :cond_3
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->e()V

    .line 947
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_4

    .line 948
    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/c;Z)V

    .line 951
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_5

    .line 952
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/d;->d()V

    .line 955
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz p1, :cond_6

    .line 956
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/m;->a()V

    .line 959
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p1, :cond_7

    .line 960
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 963
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_8

    .line 964
    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    .line 965
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->p(Z)V

    .line 968
    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_9

    .line 969
    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    .line 972
    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_a

    .line 973
    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    .line 976
    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_b

    .line 977
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    .line 978
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    .line 981
    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz p1, :cond_c

    .line 982
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b()V

    .line 985
    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_d

    .line 986
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 987
    iput-object v3, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 990
    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_e

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 991
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 992
    iput-object v3, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 995
    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 996
    invoke-virtual {p0, v1, v0, v1}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    .line 999
    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10

    .line 1000
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1003
    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    iget v2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne v0, v2, :cond_11

    .line 1004
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    .line 1007
    :cond_11
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_12

    iget v2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne v0, v2, :cond_12

    .line 1008
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    .line 1011
    :cond_12
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    if-eqz p1, :cond_13

    .line 1012
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1015
    :cond_13
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_15

    .line 1016
    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/oppo/camera/ui/e;->v:I

    if-eq v0, p1, :cond_15

    .line 1017
    :cond_14
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1020
    :cond_15
    iput-object v3, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    .line 1022
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 1023
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    .line 1024
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->aY()V

    .line 1025
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->D()V

    .line 1027
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz p1, :cond_16

    .line 1028
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->g()V

    :cond_16
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/e;)V
    .locals 2

    .line 1813
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1814
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2368
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2331
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2335
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2353
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2357
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1562
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setEnabled(Z)V

    .line 1568
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public b(ZZZ)V
    .locals 2

    .line 3660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showEnterButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-nez v0, :cond_0

    const-string p1, "closeFaceBeautyMenu, return"

    .line 3664
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3669
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/a/g;->a(Z)V

    .line 3670
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/a/g;->b(Z)V

    .line 3672
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->b()I

    move-result v0

    .line 3673
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oppo/camera/ui/e;->a(ZIZZ)V

    const/4 p3, 0x2

    if-ne p3, v0, :cond_1

    if-nez p2, :cond_3

    .line 3677
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 3682
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    new-array p2, p3, [F

    fill-array-data p2, :array_0

    const-string p3, "alpha"

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    .line 3684
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const p3, 0x7f01002c

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3686
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0xa0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3687
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3688
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/oppo/camera/ui/e$25;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/e$25;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3710
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 3712
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    .line 3713
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(II)Z
    .locals 2

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapUp, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2210
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/l;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 2214
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2215
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2216
    invoke-virtual {p0, v1, v1, p2}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_2
    return v1

    .line 2222
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2223
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string p2, "pref_subsetting_key"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2224
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    return v1

    :cond_4
    return p2
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2458
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2459
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/oppo/camera/ui/preview/e;
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->w()Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(F)V
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 1778
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 3127
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    .line 3128
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 10

    .line 4008
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 4009
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-ne p1, v4, :cond_0

    .line 4013
    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v6

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eq p2, v7, :cond_1

    if-ne p1, v7, :cond_2

    .line 4018
    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v6

    sub-int/2addr p2, v6

    .line 4019
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int v6, p2, v6

    .line 4022
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCoverViewHeight, bottomTargetHeight: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v7, "CameraUIManager"

    invoke-static {v7, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_3

    .line 4025
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 4027
    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4028
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne v0, v6, :cond_4

    return-void

    .line 4034
    :cond_4
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 4036
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4037
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4041
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_9

    .line 4042
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    if-ne p1, v4, :cond_6

    .line 4046
    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2

    :cond_6
    move p1, v5

    :goto_2
    if-nez p1, :cond_7

    .line 4050
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 4052
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4053
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne p2, p1, :cond_8

    return-void

    .line 4059
    :cond_8
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    .line 4061
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4062
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public c(IZ)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3336
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    .line 3337
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3338
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_type_add_beuty3d"

    .line 3342
    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    .line 3343
    iput-object v1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 3322
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    .line 3323
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3324
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_type_custom_beuty3d"

    .line 3328
    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    .line 3329
    iput-object v1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 3308
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    .line 3309
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3310
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_5
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_short_video"

    .line 3314
    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    .line 3315
    iput-object v1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 3294
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    .line 3295
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3296
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_sticker"

    .line 3300
    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    .line 3301
    iput-object v1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    :cond_8
    :goto_0
    return-void
.end method

.method public c(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2129
    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    .line 2131
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_0

    .line 2132
    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->t()V

    .line 2133
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;Z)V

    .line 2135
    iget p1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-nez p1, :cond_0

    .line 2136
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->b()V

    .line 2140
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 2141
    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 2142
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 2374
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;)V

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2379
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1321
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1323
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1324
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1323
    invoke-virtual {p0, v2, v1, p2}, Lcom/oppo/camera/ui/e;->a(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLastThumbNailView(), animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1830
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->k(Z)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public c(ZZZ)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "stopVideoRecording"

    .line 2014
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Z)V

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2021
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Z)V

    .line 2024
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2025
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/d;->d(Z)V

    .line 2028
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 2029
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/m;->a(Z)V

    .line 2032
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_4

    .line 2033
    invoke-virtual {p1, p2, p3}, Lcom/oppo/camera/ui/control/b;->f(ZZ)V

    .line 2036
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->R()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2037
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->al()V

    .line 2040
    :cond_5
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->g(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->z()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1729
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1730
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->e(I)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 7

    .line 4068
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    if-eq p2, v1, :cond_3

    .line 4075
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    .line 4078
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_1

    .line 4079
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    .line 4082
    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4083
    new-array p2, v2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v3, 0xc8

    .line 4084
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4085
    new-instance v0, Lcom/oppo/camera/ui/e$26;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$26;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4092
    new-array v0, v2, [I

    const/4 v5, 0x0

    aput p1, v0, v5

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4093
    new-instance v0, Lcom/oppo/camera/ui/e$27;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$27;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4106
    new-instance v0, Lcom/oppo/camera/ui/e$28;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$28;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4127
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4128
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    new-array v6, v2, [Landroid/animation/Animator;

    aput-object p1, v6, v5

    aput-object p2, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4129
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 4131
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    .line 4134
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2

    .line 4135
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    .line 4138
    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4139
    new-array p2, v2, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 4140
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4141
    new-instance v0, Lcom/oppo/camera/ui/e$29;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$29;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4148
    new-array v0, v2, [I

    aput p1, v0, v5

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4149
    new-instance v0, Lcom/oppo/camera/ui/e$30;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$30;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4162
    new-instance v0, Lcom/oppo/camera/ui/e$31;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$31;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4183
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4184
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4185
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 4187
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eq p2, v1, :cond_4

    .line 4190
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(IZ)V
    .locals 5

    const-string v0, "CameraUIManager"

    const-string v1, "afterOpenCameraUpdateUI"

    .line 1783
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1786
    iget-boolean v4, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, p1, v3, v4}, Lcom/oppo/camera/ui/menu/setting/i;->a(IZZ)V

    .line 1788
    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-eqz v0, :cond_1

    .line 1789
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 1790
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(I)V

    .line 1794
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_3

    .line 1795
    iget-boolean v4, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    invoke-virtual {v0, p1, v3, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(IZZ)V

    .line 1797
    iget-boolean p1, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-eqz p1, :cond_3

    .line 1798
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v3, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 1799
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(I)V

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 2385
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2386
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    .line 2389
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2390
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    .line 4431
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 4432
    invoke-interface {p2}, Lcom/oppo/camera/ui/d;->j()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Z)V

    .line 4435
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 4436
    invoke-interface {p2}, Lcom/oppo/camera/ui/d;->j()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 2505
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2506
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->b(Z)V

    :cond_0
    return-void
.end method

.method public d(ZZ)V
    .locals 2

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAllCameraView, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    .line 1695
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    .line 1696
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    .line 1697
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 1698
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 1699
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->o(Z)V

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->x()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .line 1736
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 1

    .line 4263
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 4264
    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/d;->a(II)V

    :cond_0
    return-void
.end method

.method public e(IZ)V
    .locals 2

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needControlAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1923
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(IZ)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 10

    .line 3007
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    .line 3008
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->aX()V

    .line 3010
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 3013
    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne v0, v1, :cond_0

    .line 3014
    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3015
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    .line 3016
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 3017
    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    goto :goto_0

    .line 3019
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3020
    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 3023
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    :cond_1
    const v9, 0x7f0501d3

    const v8, 0x7f0703ae

    if-eqz p1, :cond_2

    .line 3030
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3034
    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    .line 3035
    invoke-virtual/range {v4 .. v9}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    :cond_3
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1960
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/m;->b(Z)V

    :cond_0
    return-void
.end method

.method public e(ZZ)V
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 1659
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2404
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->h()V

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2408
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->h()V

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1744
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->g(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4442
    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public f(ZZ)V
    .locals 1

    .line 1704
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->j(Z)V

    const/4 v0, 0x0

    .line 1705
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 1707
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_0

    .line 1708
    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1684
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->z()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)V
    .locals 1

    .line 2498
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2499
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(I)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public g(ZZ)V
    .locals 0

    .line 1721
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_0

    .line 1722
    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/b;->e(Z)V

    .line 1723
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->f()V

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    .line 3460
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3461
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->B()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public h(I)V
    .locals 2

    .line 1757
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 1758
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "hideAllCameraView"

    .line 4197
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4200
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz p1, :cond_0

    .line 4201
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(Z)V

    .line 4205
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->j()V

    .line 4206
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 4207
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->j()V

    .line 4208
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    .line 4209
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 4210
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 4211
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 4212
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    .line 4213
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 4214
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->c(Z)V

    .line 4216
    iget p1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 4217
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/b;->d(I)V

    .line 4218
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->i(Z)V

    .line 4221
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/control/b;->e(ZZ)V

    return-void
.end method

.method public h(ZZ)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 2300
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    .line 2301
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()V
    .locals 3

    .line 2947
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2951
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_3

    .line 2952
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    .line 2953
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 2954
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->af:Lcom/oppo/camera/ui/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setCameraScreenHintListener(Lcom/oppo/camera/ui/a;)V

    .line 2955
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/e;->w(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    .line 2956
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ah:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2958
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2959
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 2960
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2961
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 2963
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2966
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 2967
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 2968
    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2969
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    .line 2971
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_rotate_hint_view"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2972
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_3
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 3864
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3865
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->h(I)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 11

    .line 3378
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    .line 3379
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->aZ()V

    .line 3381
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603a2

    .line 3383
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 3384
    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3385
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603a1

    .line 3386
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3387
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    .line 3391
    :cond_0
    iget-object v5, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v5, :cond_1

    const v10, 0x7f0501d2

    const v9, 0x7f0501e0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    .line 3395
    invoke-virtual/range {v5 .. v10}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 3041
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3042
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

.method public i(ZZ)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "startVideoRecording"

    .line 1991
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 1994
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Z)V

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 1998
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Z)V

    .line 2001
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_2

    .line 2002
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/d;->C()V

    .line 2003
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/d;->d(Z)V

    .line 2006
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_3

    .line 2007
    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/b;->j(Z)V

    :cond_3
    const/4 p1, 0x0

    .line 2010
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->g(Z)V

    return-void
.end method

.method public j()Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 1

    .line 2979
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object v0
.end method

.method public j(I)V
    .locals 2

    .line 1967
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-nez v0, :cond_0

    .line 1968
    new-instance v0, Lcom/oppo/camera/ui/preview/f;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/oppo/camera/ui/preview/f;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1972
    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/preview/f;->a(Ljava/lang/Float;I)V

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 3937
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    .line 3938
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 3530
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3531
    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(IZ)V

    :cond_0
    return-void
.end method

.method public j(ZZ)V
    .locals 1

    .line 2425
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2426
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(ZZ)V

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2430
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(ZZ)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    .line 2467
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 2468
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->G()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 2533
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->ba()V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 4455
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4456
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-nez v0, :cond_0

    .line 4457
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4458
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4461
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4462
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    goto :goto_0

    .line 4464
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultExpandPanel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4465
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4466
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4469
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    .line 4471
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4472
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 3730
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    .line 3731
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 3732
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(IZ)V

    :cond_0
    return-void
.end method

.method public k(ZZ)V
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 2436
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->c(ZZ)V

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 2440
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->c(ZZ)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->w()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1214
    iput p1, p0, Lcom/oppo/camera/ui/e;->w:I

    .line 1216
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->d(I)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 3495
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3496
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/l;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public l(ZZ)V
    .locals 1

    .line 3488
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)Z
    .locals 2

    .line 4481
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/l;

    iget-object v0, v0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    if-nez v0, :cond_0

    .line 4482
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/l;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->am:Lcom/oppo/camera/ui/menu/setting/l$b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/l;->setExpandMenuListener(Lcom/oppo/camera/ui/menu/setting/l$b;)V

    .line 4485
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/setting/l;

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    .line 4486
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(I)V
    .locals 1

    .line 1389
    iput p1, p0, Lcom/oppo/camera/ui/e;->t:I

    .line 1391
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_0

    .line 1392
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->b(I)V

    .line 1395
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_1

    .line 1396
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(I)V

    .line 1399
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_2

    .line 1400
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(I)V

    .line 1403
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_3

    .line 1404
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/d;->b(I)V

    :cond_3
    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 3537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3543
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "func_face_beauty_process"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 3544
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    .line 3547
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 3548
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->r()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3549
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(IZ)V

    .line 3551
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3552
    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/ui/e;->f(IZ)V

    .line 3555
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->ba()V

    :cond_2
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_filter_menu"

    .line 4490
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_portrait_new_style_menu"

    .line 4491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_filter_menu"

    .line 4492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public n(I)V
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->e(I)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 6

    .line 3579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3582
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "openFaceBeautyMenu, mCloseFaceAlphaButtonAnimator.isRunning()"

    .line 3583
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3589
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-nez v0, :cond_1

    const-string p1, "openFaceBeautyMenu, return"

    .line 3590
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 3595
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/a/g;->a(Z)V

    .line 3597
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aq()V

    .line 3598
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v3, 0x7f0f00d0

    .line 3599
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_gesture_shutter_key"

    .line 3598
    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3603
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3604
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->w()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3607
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/e;->b(ZI)V

    .line 3609
    iget-object v3, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v3, v0}, Lcom/oppo/camera/ui/menu/a/g;->a(I)Landroid/view/View;

    move-result-object v3

    .line 3610
    iget-object v4, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/a/g;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 3613
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3615
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3616
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v5}, Lcom/oppo/camera/ui/control/b;->A()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 3617
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3620
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v2}, Lcom/oppo/camera/ui/d;->p()I

    move-result v2

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/ui/menu/a/g;->a(ZZ)V

    :cond_4
    const/4 v1, 0x2

    if-eq v1, v0, :cond_6

    if-eqz p1, :cond_5

    .line 3625
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3627
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f01002c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x50

    .line 3629
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3630
    new-instance v0, Lcom/oppo/camera/ui/e$24;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$24;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3651
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 3653
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public n()Z
    .locals 3

    .line 1617
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v2, :cond_1

    .line 1621
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    .line 1622
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    .line 1623
    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    .line 1624
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public o()V
    .locals 2

    .line 3401
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3402
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 2

    .line 1487
    iput p1, p0, Lcom/oppo/camera/ui/e;->u:I

    .line 1489
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 1490
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->c(I)V

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 1494
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->e(I)V

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_2

    .line 1498
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->e(I)V

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_3

    .line 1502
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/d;->c(I)V

    .line 1505
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_4

    .line 1506
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(I)V

    .line 1509
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_5

    .line 1510
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 1513
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_6

    .line 1514
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 1517
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_7

    .line 1518
    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 1521
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_8

    .line 1522
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 1525
    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_9

    .line 1526
    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 1529
    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_a

    .line 1530
    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    .line 1533
    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz p1, :cond_b

    .line 1534
    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a;->a(I)V

    .line 1537
    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_c

    .line 1538
    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    .line 1541
    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz p1, :cond_d

    .line 1542
    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/f;->e(I)V

    :cond_d
    return-void
.end method

.method public o(Z)V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "func_face_beauty_process"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFaceBeautyMenu, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(ZZ)V

    .line 1582
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 341
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    .line 345
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 346
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 347
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->o(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    .line 352
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->u(I)V

    :cond_1
    return-void
.end method

.method public p(I)V
    .locals 1

    .line 1883
    iput p1, p0, Lcom/oppo/camera/ui/e;->v:I

    .line 1885
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_0

    .line 1886
    iget v0, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(I)V

    .line 1889
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_1

    .line 1890
    iget v0, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(I)V

    .line 1893
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_2

    .line 1894
    iget v0, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->a(I)V

    :cond_2
    return-void
.end method

.method public p(Z)V
    .locals 1

    .line 4543
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4548
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4549
    iput-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    goto :goto_0

    .line 4550
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4551
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    .line 321
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->k(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, v2, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    .line 334
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/e;->e(IZ)V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 3970
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    .line 3971
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->b(I)V

    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/oppo/camera/ui/e;->ab:Z

    return-void
.end method

.method public r()Lcom/oppo/camera/ui/preview/a/g;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ad:Lcom/oppo/camera/ui/preview/a/g;

    return-object v0
.end method

.method public r(I)V
    .locals 1

    .line 3976
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    .line 3977
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->c(I)V

    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 3074
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "removeHighFpsHintView"

    .line 3075
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3078
    iput-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 4

    .line 4277
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4281
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4285
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_3

    .line 4286
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_night_process"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/e;->x:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    if-ne v1, p1, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4290
    iput v0, p0, Lcom/oppo/camera/ui/e;->y:I

    .line 4292
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 4293
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4294
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4298
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/e$32;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/e$32;-><init>(Lcom/oppo/camera/ui/e;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 3509
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3510
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->D()V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 2

    .line 4754
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "showMoreView"

    .line 4755
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4757
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->d(I)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 5

    const-string v0, "pref_subsetting_key"

    .line 672
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 673
    invoke-virtual {p0, v1, v1, v2}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    .line 674
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aJ()V

    .line 675
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->p(Z)V

    .line 676
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->a(Z)V

    goto :goto_0

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aN()V

    .line 680
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->F()Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->E()V

    .line 683
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->G()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/e;->v(I)V

    .line 689
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 690
    :goto_1
    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    .line 693
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 694
    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public u()V
    .locals 1

    .line 3516
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 3517
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->E()V

    :cond_0
    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 3523
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 3524
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->y()V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 3

    .line 1089
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->H()V

    const/4 v0, 0x0

    .line 1090
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->d(I)V

    const/4 v1, 0x1

    .line 1091
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 1093
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/control/b;->d(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1098
    iget p1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->u(I)V

    .line 1099
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    goto :goto_2

    .line 1101
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1102
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->k(Z)V

    goto :goto_0

    .line 1104
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 1107
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "func_face_beauty_process"

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1108
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    goto :goto_1

    .line 1110
    :cond_3
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 1113
    :goto_1
    iget p1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/e;->e(IZ)V

    :goto_2
    return-void
.end method

.method public w(Z)V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Z)V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Z)V

    :cond_1
    return-void
.end method

.method public w()Z
    .locals 1

    .line 3721
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x(Z)V
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->c(Z)V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    .line 4840
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Z)V
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->g(Z)V

    :cond_0
    return-void
.end method

.method public y()Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result v0

    return v0
.end method

.method public z()V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 719
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z(Z)V
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->l(Z)V

    return-void
.end method

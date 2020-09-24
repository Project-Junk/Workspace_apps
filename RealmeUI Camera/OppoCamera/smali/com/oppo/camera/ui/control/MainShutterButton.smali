.class public Lcom/oppo/camera/ui/control/MainShutterButton;
.super Lcom/oppo/camera/ui/control/ShutterButton;
.source "MainShutterButton.java"


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Landroid/animation/ObjectAnimator;

.field private O:Landroid/animation/ObjectAnimator;

.field private P:Landroid/graphics/RectF;

.field private Q:Landroid/graphics/RectF;

.field private R:Landroid/graphics/RectF;

.field private S:Landroid/graphics/RectF;

.field private T:Landroid/graphics/RectF;

.field private U:Landroid/graphics/Paint;

.field private V:Landroid/graphics/Paint;

.field private W:Landroid/graphics/Paint;

.field private aa:Landroid/graphics/Paint;

.field private ab:Landroid/graphics/Paint;

.field private ac:Landroid/graphics/Paint;

.field private ad:Landroid/graphics/Paint;

.field private ae:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oppo/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private af:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oppo/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oppo/camera/ui/control/MainShutterButton;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Landroid/animation/ObjectAnimator;

.field private ai:Landroid/animation/ObjectAnimator;

.field private aj:Landroid/animation/ObjectAnimator;

.field private ak:Landroid/animation/ValueAnimator;

.field private al:Landroid/animation/ValueAnimator;

.field private am:Landroid/animation/ValueAnimator;

.field private an:Landroid/animation/ValueAnimator;

.field private ao:Landroid/animation/ValueAnimator;

.field private ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/control/MainShutterButton;->b:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/control/MainShutterButton;->c:Landroid/view/animation/Interpolator;

    const-string v0, "#FFEA3447"

    .line 79
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oppo/camera/ui/control/MainShutterButton;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 170
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 97
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    .line 99
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    .line 100
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 101
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    .line 102
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    .line 103
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 104
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 105
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    .line 106
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    .line 107
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    .line 108
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    .line 109
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    .line 110
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    .line 111
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    .line 112
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    .line 113
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/4 v1, 0x6

    .line 115
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const/16 v2, 0xc

    .line 116
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    .line 117
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    const/16 v3, 0x9

    .line 118
    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    .line 119
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    .line 120
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    .line 121
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    const/16 v1, 0x18

    .line 122
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    const/4 v1, 0x0

    .line 124
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    .line 125
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    .line 126
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    .line 127
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    .line 128
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    .line 133
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 134
    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    .line 135
    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    .line 137
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    .line 138
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    .line 140
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    .line 141
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    .line 142
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    .line 143
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    .line 144
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    .line 145
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    .line 146
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    .line 147
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    .line 148
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    .line 149
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    .line 150
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    .line 151
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 153
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    .line 154
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    .line 155
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    .line 157
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    .line 158
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    .line 159
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    .line 161
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    .line 162
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    .line 163
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    .line 164
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    .line 165
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    .line 167
    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    .line 99
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    .line 100
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 101
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    .line 102
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    .line 103
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 104
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 105
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    .line 106
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    .line 107
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    .line 108
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    .line 109
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    .line 110
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    .line 111
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    .line 112
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    .line 113
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/4 v2, 0x6

    .line 115
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const/16 v3, 0xc

    .line 116
    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    .line 117
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    const/16 v4, 0x9

    .line 118
    iput v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    .line 119
    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    .line 120
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    .line 121
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    const/16 v2, 0x18

    .line 122
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    .line 125
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    .line 126
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    .line 127
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    .line 128
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 v2, 0x0

    .line 130
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 134
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    .line 135
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    .line 137
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    .line 138
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    .line 140
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    .line 141
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    .line 142
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    .line 143
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    .line 144
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    .line 145
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    .line 146
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    .line 147
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    .line 148
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    .line 149
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    .line 150
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    .line 151
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 153
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    .line 154
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    .line 155
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    .line 157
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    .line 158
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    .line 159
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    .line 161
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    .line 162
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    .line 163
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    .line 164
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    .line 165
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    .line 167
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 175
    invoke-virtual {p0, p1, p2, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/control/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    .line 99
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    .line 100
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 101
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    .line 102
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    .line 103
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 104
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 105
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    .line 106
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    .line 107
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    .line 108
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    .line 109
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    .line 110
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    .line 111
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    .line 112
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    .line 113
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/4 v2, 0x6

    .line 115
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const/16 v3, 0xc

    .line 116
    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    .line 117
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    const/16 v4, 0x9

    .line 118
    iput v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    .line 119
    iput v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    .line 120
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    .line 121
    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    const/16 v2, 0x18

    .line 122
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    .line 125
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    .line 126
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    .line 127
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    .line 128
    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 v2, 0x0

    .line 130
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 134
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    .line 135
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    .line 137
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    .line 138
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    .line 140
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    .line 141
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    .line 142
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    .line 143
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    .line 144
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    .line 145
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    .line 146
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    .line 147
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    .line 148
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    .line 149
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    .line 150
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    .line 151
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 153
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    .line 154
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    .line 155
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    .line 157
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    .line 158
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    .line 159
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    .line 161
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    .line 162
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    .line 163
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    .line 164
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    .line 165
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    .line 167
    iput-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    return-object p1
.end method

.method private a(II)V
    .locals 0

    .line 906
    iput p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    .line 907
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 0

    .line 901
    iput-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    .line 902
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1396
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v1, "button_shape_ring_none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1400
    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x0

    const-string v2, "button_shape_dial_rotate"

    const-string v3, "button_shape_dial_still"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    goto :goto_1

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1421
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    .line 1422
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    .line 1423
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1424
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1425
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1428
    :cond_3
    iput-boolean v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    .line 1429
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    .line 1410
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1411
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    goto :goto_0

    .line 1412
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1413
    iput-boolean v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    .line 1416
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->M:Z

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/graphics/Canvas;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Z)V
    .locals 4

    .line 716
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    const-string v1, "button_color_inside_red"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x33

    const/16 v2, 0xff

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 718
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    const-string v3, "button_color_inside_grey"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 721
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 725
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 726
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    .line 727
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 730
    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 732
    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 736
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    const-string v0, "button_color_inside_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    if-eqz p2, :cond_7

    .line 737
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v0, "button_shape_ring_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 738
    :goto_2
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    :goto_3
    int-to-float p2, p2

    .line 739
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 742
    :cond_7
    iget-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->k()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    return p1
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 192
    sget-object v0, Lcom/oppo/camera/R$styleable;->MainShutterButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p3, 0x12

    const v0, 0x7f060370

    .line 197
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    const/16 p3, 0xe

    const v0, 0x7f060382

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 198
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    const/16 p3, 0x10

    const v0, 0x7f06037b

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 200
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    const/16 p3, 0xf

    const v0, 0x7f06037a

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 202
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    const p3, 0x7f090009

    .line 205
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 204
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    const/16 p3, 0x16

    const v0, 0x7f09000b

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 206
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    const/16 p3, 0x11

    const v0, 0x7f09000a

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 208
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    .line 210
    iget p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    mul-int/lit8 p3, p3, 0x2

    rsub-int p3, p3, 0x168

    int-to-float p3, p3

    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    const/4 p3, 0x4

    const v0, 0x7f060371

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 211
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 214
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    iget p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    .line 221
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    .line 222
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    .line 228
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    .line 234
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    sget v0, Lcom/oppo/camera/ui/control/MainShutterButton;->d:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    .line 239
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 244
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    .line 245
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    .line 251
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->l()V

    return-void

    .line 216
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private b(Landroid/graphics/Canvas;Z)V
    .locals 11

    .line 1351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1352
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    .line 1353
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_a

    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 1357
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    add-int v4, v1, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 1360
    :cond_0
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_1

    const/4 v4, 0x0

    .line 1361
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    add-int v3, v1, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    add-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 1364
    :cond_1
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-le v2, v1, :cond_6

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x3c

    if-ne v0, v2, :cond_3

    .line 1373
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    .line 1375
    :goto_1
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_4

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    .line 1377
    :goto_2
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    add-int/lit8 v4, v3, -0x3c

    if-le v0, v4, :cond_5

    if-nez v3, :cond_9

    :cond_5
    const/4 v6, 0x0

    .line 1378
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int v4, v3, v2

    int-to-float v7, v4

    const/4 v8, 0x0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    int-to-float v9, v3

    iget-object v10, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 1365
    :cond_6
    :goto_3
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-ne v0, v1, :cond_7

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    .line 1366
    :goto_4
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-ne v0, v2, :cond_8

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    goto :goto_5

    :cond_8
    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    .line 1368
    :goto_5
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    if-lt v0, v3, :cond_9

    const/4 v5, 0x0

    .line 1369
    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int v4, v3, v1

    int-to-float v6, v4

    const/4 v7, 0x0

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ac:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    .line 1385
    invoke-virtual {p1, v1, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1388
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/MainShutterButton;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/MainShutterButton;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->u()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/control/MainShutterButton;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/control/MainShutterButton;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    return p0
.end method

.method private h()V
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 304
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/graphics/RectF;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 316
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 322
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    return-object p0
.end method

.method private j()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    return v0
.end method

.method private k()V
    .locals 2

    .line 746
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    .line 748
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    if-eqz v0, :cond_0

    .line 749
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    :cond_0
    return-void
.end method

.method private l()V
    .locals 0

    .line 759
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->m()V

    .line 760
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->s()V

    .line 761
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->t()V

    return-void
.end method

.method private m()V
    .locals 6

    .line 765
    new-instance v0, Lcom/oppo/camera/ui/control/MainShutterButton$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/ui/control/MainShutterButton$1;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    .line 778
    new-instance v0, Lcom/oppo/camera/ui/control/MainShutterButton$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/ui/control/MainShutterButton$2;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    .line 790
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    .line 791
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/oppo/camera/ui/control/MainShutterButton;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 792
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->m:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 793
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 794
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 796
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    new-array v4, v1, [F

    iget v5, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    aput v5, v4, v3

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    .line 797
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/oppo/camera/ui/control/MainShutterButton;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 798
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->n:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 799
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 800
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 801
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oppo/camera/ui/control/MainShutterButton$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$3;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    .line 1042
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    .line 1043
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    .line 1044
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    .line 1045
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    .line 1046
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    .line 1047
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    .line 1048
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    .line 1052
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->O:Landroid/animation/ObjectAnimator;

    .line 1053
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->N:Landroid/animation/ObjectAnimator;

    .line 1054
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ae:Landroid/util/Property;

    .line 1055
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->af:Landroid/util/Property;

    .line 1056
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    return-void
.end method

.method private s()V
    .locals 6

    .line 1077
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06037d

    .line 1078
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    const v1, 0x7f06037e

    .line 1079
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    const v1, 0x7f06037f

    .line 1080
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    .line 1082
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->A:I

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->z:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    .line 1083
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->C:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 1084
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    .line 1085
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->v:I

    sub-int v1, v2, v0

    iget v3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->w:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    .line 1086
    div-int/2addr v2, v0

    iput v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->y:I

    .line 1088
    new-instance v1, Lcom/oppo/camera/ui/control/MainShutterButton$4;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "dial"

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/control/MainShutterButton$4;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    .line 1100
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    .line 1101
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1102
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1103
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oppo/camera/ui/control/MainShutterButton$5;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$5;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1138
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    .line 1139
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1140
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1141
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oppo/camera/ui/control/MainShutterButton$6;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$6;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1149
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    .line 1150
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1151
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1152
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1153
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1154
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oppo/camera/ui/control/MainShutterButton$7;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$7;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1177
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ag:Landroid/util/Property;

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    .line 1178
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f1374bc    # 0.576f

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3ed78d50    # 0.421f

    const v5, 0x3f5a5e35    # 0.853f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1181
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oppo/camera/ui/control/MainShutterButton$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$8;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x78
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3c
    .end array-data
.end method

.method private setButtonTypeAndInvalidate(I)V
    .locals 2

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonTypeAndInvalidate, buttonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 915
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 916
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->n()V

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->o()V

    .line 921
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonType(I)V

    .line 923
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 924
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->w()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 926
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->h()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 927
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v0, "button_shape_dial_rotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 928
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->c()V

    goto :goto_0

    .line 930
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    :goto_0
    return-void
.end method

.method private t()V
    .locals 11

    .line 1211
    new-instance v0, Lcom/oppo/camera/ui/control/MainShutterButton$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/control/MainShutterButton$9;-><init>(Lcom/oppo/camera/ui/control/MainShutterButton;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x2

    .line 1234
    new-array v1, v0, [F

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    .line 1235
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f28f5c3    # 0.66f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1238
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1239
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1241
    new-array v0, v0, [F

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v1, v1

    aput v1, v0, v3

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v1, v1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    .line 1242
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1245
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1246
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ap:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private u()V
    .locals 4

    .line 1250
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x78

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1251
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    rsub-int/lit8 v1, v1, 0x78

    mul-int/lit16 v1, v1, 0x320

    div-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private v()V
    .locals 2

    const/4 v0, 0x0

    .line 1256
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    .line 1257
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    .line 1258
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->aj:Landroid/animation/ObjectAnimator;

    .line 1259
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    .line 1260
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    .line 1261
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    .line 1263
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1264
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1265
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->an:Landroid/animation/ValueAnimator;

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 1269
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1270
    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ao:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method private w()V
    .locals 3

    .line 1294
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1295
    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1296
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1036
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->q()V

    .line 1037
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->r()V

    .line 1038
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->v()V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonType, insideRectColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inSideColor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iput-object p2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    .line 1014
    iput p3, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    .line 1015
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonType(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 184
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    const-string v3, "button_shape_ring_none"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;)V
    .locals 4

    .line 935
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getShutterButtonInfo()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "MainShutterButton"

    if-nez v0, :cond_0

    const-string p1, "switchToModeType, null == currentButtonInfo"

    .line 938
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 943
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToModeType, before shutterButtonType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", before insideColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", before ringShape: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> after shutterButtonType: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", after insideColor: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", after ringShape: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1062
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;)Z
    .locals 2

    .line 953
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    if-ne v0, v1, :cond_0

    .line 954
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ah:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ak:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "MainShutterButton"

    const-string v1, "pauseFastVideoDialAnimator"

    .line 1313
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "MainShutterButton"

    const-string v1, "resumeFastVideoDialAnimator"

    .line 1321
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->ai:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public getButtonType()I
    .locals 1

    .line 1019
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    return v0
.end method

.method public getCurrentGlobalAngle()F
    .locals 1

    .line 825
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .locals 1

    .line 837
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    return v0
.end method

.method public getDialValue()I
    .locals 1

    .line 1275
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    return v0
.end method

.method public getInsideColor()Ljava/lang/String;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getRingShape()Ljava/lang/String;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getShutterButtonInfo()Lcom/oppo/camera/ui/control/c;
    .locals 3

    .line 1031
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    iget-object v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow, mButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->h()V

    .line 856
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDetachedFromWindow, mButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->i()V

    .line 867
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/ui/control/ShutterButton;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 339
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    const/4 v8, 0x2

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->P:Landroid/graphics/RectF;

    .line 345
    :cond_0
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    .line 346
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->Q:Landroid/graphics/RectF;

    .line 351
    :cond_1
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    .line 352
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v3, v8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v5, v8

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v6, v8

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    .line 356
    :cond_2
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    if-nez v1, :cond_3

    .line 357
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v3, v8

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v4, v8

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v5, v8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v8

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    .line 363
    :cond_3
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    if-nez v1, :cond_4

    .line 364
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    .line 367
    :cond_4
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 368
    invoke-direct {v0, v7, v9}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_f

    :cond_5
    const/16 v10, 0xff

    if-ne v1, v8, :cond_8

    .line 370
    invoke-direct {v0, v7, v9}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 372
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_6

    .line 373
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 374
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_0

    :cond_6
    if-ne v9, v1, :cond_7

    .line 376
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_0

    .line 379
    :cond_7
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 383
    :goto_0
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_8
    const/4 v2, 0x3

    const/16 v3, 0x80

    const/4 v11, 0x0

    if-ne v1, v2, :cond_c

    .line 385
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    invoke-direct {v0, v7, v11}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 388
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 389
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->p:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 391
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_9

    .line 392
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 393
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_1

    :cond_9
    if-ne v9, v1, :cond_a

    .line 395
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 396
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_1

    :cond_a
    if-ne v8, v1, :cond_b

    .line 398
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 399
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_1

    .line 401
    :cond_b
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 405
    :goto_1
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_c
    const/4 v4, 0x4

    if-ne v1, v4, :cond_f

    .line 407
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 408
    invoke-direct {v0, v7, v11}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 410
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->E:F

    sub-float/2addr v1, v2

    .line 411
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    .line 420
    iget-boolean v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->L:Z

    if-eqz v3, :cond_d

    .line 421
    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 423
    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_e

    sub-float/2addr v3, v4

    goto :goto_2

    :cond_d
    add-float/2addr v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v2

    .line 428
    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->o:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 430
    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->H:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_e

    sub-float/2addr v1, v4

    add-float/2addr v3, v4

    :cond_e
    :goto_2
    move v4, v3

    move v3, v1

    .line 436
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 437
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_f
    const/4 v5, 0x5

    const-string v6, "button_shape_ring_none"

    const-string v12, "button_color_inside_red"

    const-string v13, "button_color_inside_grey"

    const-string v14, "button_color_inside_none"

    const/16 v15, 0x8

    const/high16 v16, 0x41000000    # 8.0f

    if-ne v1, v5, :cond_15

    .line 439
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 440
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 442
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 446
    :cond_10
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    goto :goto_3

    :cond_11
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 448
    :goto_3
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    div-int/2addr v2, v8

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 449
    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    div-float v2, v2, v16

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v4

    div-int/2addr v4, v8

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v8

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v11, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    sub-float/2addr v6, v11

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v11

    div-int/2addr v11, v8

    add-int/2addr v11, v1

    int-to-float v11, v11

    iget v8, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v9, v8

    mul-float/2addr v9, v2

    sub-float/2addr v11, v9

    int-to-float v1, v1

    int-to-float v2, v8

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 457
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 461
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 462
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 463
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_4

    .line 465
    :cond_12
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 466
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 467
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    const/4 v2, 0x1

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v2, 0x0

    .line 471
    :goto_5
    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 473
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_14

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 474
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_14
    const/4 v1, 0x0

    .line 477
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    const/4 v1, 0x2

    .line 478
    invoke-virtual {v0, v1, v14, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;I)V

    goto/16 :goto_f

    :cond_15
    const/4 v5, 0x6

    if-ne v1, v5, :cond_1a

    .line 481
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 483
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->g:I

    goto :goto_6

    :cond_16
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->h:I

    .line 485
    :goto_6
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int v2, v1, v2

    int-to-float v2, v2

    .line 486
    iget v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float v4, v4, v16

    div-float v2, v2, v16

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v8, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v3

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v9

    div-int/2addr v9, v3

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v11, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    add-float/2addr v9, v11

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v11

    div-int/2addr v11, v3

    add-int/2addr v11, v6

    int-to-float v3, v11

    iget v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v11, v6

    mul-float/2addr v11, v2

    add-float/2addr v3, v11

    int-to-float v1, v1

    int-to-float v2, v6

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 494
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 498
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v2, :cond_17

    .line 499
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    move-object v14, v13

    goto :goto_7

    :cond_17
    const/4 v3, 0x1

    if-ne v3, v2, :cond_18

    .line 503
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 504
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    move-object v14, v12

    goto :goto_7

    .line 507
    :cond_18
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 508
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 511
    :goto_7
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 513
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-ge v1, v15, :cond_19

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 514
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_19
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 517
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 518
    invoke-direct {v0, v5, v14}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(ILjava/lang/String;)V

    goto/16 :goto_f

    :cond_1a
    const/4 v5, 0x1

    const/4 v6, 0x7

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v1, :cond_1e

    .line 521
    invoke-direct {v0, v7, v5}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 523
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 524
    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v4, v3

    mul-float/2addr v4, v1

    .line 525
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    const/4 v5, 0x2

    div-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v4

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v4

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v5, v9

    add-float/2addr v5, v4

    .line 531
    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v6, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 539
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_1b

    .line 540
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 541
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_8

    :cond_1b
    const/4 v4, 0x1

    if-ne v4, v1, :cond_1c

    .line 543
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 544
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_8

    .line 546
    :cond_1c
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 547
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 550
    :goto_8
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 552
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_1d

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 553
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_1d
    const/4 v1, 0x0

    .line 556
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 557
    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_f

    :cond_1e
    if-ne v15, v1, :cond_22

    .line 560
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 562
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v2, v1

    div-float v2, v2, v16

    int-to-float v1, v1

    .line 563
    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    .line 564
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v5, v2

    div-float v5, v5, v16

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    const/4 v5, 0x2

    div-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v1, v8

    sub-float/2addr v3, v1

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v1

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v5, v9

    add-float/2addr v5, v1

    .line 570
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v6, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 574
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 575
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 576
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->aa:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_9

    .line 578
    :cond_1f
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 579
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 580
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    const/4 v1, 0x1

    goto :goto_a

    :cond_20
    :goto_9
    const/4 v1, 0x0

    .line 584
    :goto_a
    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 586
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-ge v2, v15, :cond_21

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 587
    iput v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_21
    const/4 v2, 0x0

    .line 590
    iput v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 591
    invoke-direct {v0, v4, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(II)V

    goto/16 :goto_f

    :cond_22
    const/4 v5, 0x1

    const/16 v4, 0x9

    if-ne v4, v1, :cond_25

    .line 594
    invoke-direct {v0, v7, v5}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 596
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_23

    .line 597
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 598
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_b

    :cond_23
    if-ne v5, v1, :cond_24

    .line 600
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 601
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_b

    .line 603
    :cond_24
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 604
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 607
    :goto_b
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_25
    const/16 v4, 0xa

    if-ne v4, v1, :cond_29

    .line 609
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 610
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 612
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 613
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    .line 614
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v1, v1

    div-float v1, v1, v16

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v1

    const/4 v4, 0x2

    div-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v3

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    int-to-float v4, v8

    add-float/2addr v4, v3

    .line 620
    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 622
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_26

    .line 623
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 624
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_c

    :cond_26
    const/4 v3, 0x1

    if-ne v3, v1, :cond_27

    .line 626
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 627
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_c

    .line 629
    :cond_27
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 630
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 633
    :goto_c
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 635
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_28

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 636
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_28
    const/4 v1, 0x0

    .line 639
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    const/16 v1, 0x9

    .line 640
    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_f

    :cond_29
    const/4 v4, 0x1

    const/16 v5, 0xb

    if-ne v5, v1, :cond_2d

    .line 643
    invoke-direct {v0, v7, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    .line 645
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->i:I

    int-to-float v2, v1

    div-float v2, v2, v16

    int-to-float v1, v1

    .line 646
    iget v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    int-to-float v4, v3

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 647
    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v4, v2

    div-float v4, v4, v16

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v8

    sub-float/2addr v3, v1

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v1

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr v6, v1

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    int-to-float v4, v8

    add-float/2addr v4, v1

    .line 653
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 655
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_2a

    .line 656
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_d

    :cond_2a
    const/4 v3, 0x1

    if-ne v3, v1, :cond_2b

    .line 659
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 660
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_d

    .line 662
    :cond_2b
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 663
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 666
    :goto_d
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->T:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 668
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-ge v1, v15, :cond_2c

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 669
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto/16 :goto_f

    :cond_2c
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 672
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    .line 673
    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto/16 :goto_f

    :cond_2d
    const/16 v4, 0xc

    if-ne v1, v4, :cond_30

    .line 676
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 677
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 678
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->t:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 679
    iget-object v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->R:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->U:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 681
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    if-nez v1, :cond_2e

    .line 682
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 683
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_e

    :cond_2e
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2f

    .line 685
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 686
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->W:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    goto :goto_e

    .line 688
    :cond_2f
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 689
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->V:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    .line 692
    :goto_e
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->S:Landroid/graphics/RectF;

    iget v2, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->j:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ad:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 694
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/16 v2, 0x168

    if-lt v1, v2, :cond_32

    const/4 v4, 0x0

    .line 695
    iput v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/16 v1, 0xb

    .line 696
    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    goto :goto_f

    :cond_30
    const/4 v4, 0x0

    const/16 v5, 0xd

    if-ne v5, v1, :cond_32

    .line 699
    iget-object v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->ab:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 700
    invoke-direct {v0, v7, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;Z)V

    const/4 v1, 0x2

    .line 701
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    .line 703
    iget v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    if-ge v1, v15, :cond_31

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 704
    iput v1, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    goto :goto_f

    .line 707
    :cond_31
    iput v4, v0, Lcom/oppo/camera/ui/control/MainShutterButton;->k:I

    .line 708
    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(I)V

    .line 712
    :cond_32
    :goto_f
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setButtonType(I)V
    .locals 2

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    .line 993
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 994
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    .line 997
    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    if-eqz p1, :cond_1

    .line 998
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->l:I

    :cond_1
    return-void
.end method

.method public setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V
    .locals 2

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setButtonTypeAndInvalidate, mShutterButtonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInfoInsideColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRingShape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInfoInsideRectColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainShutterButton"

    .line 871
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->K:Z

    .line 878
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->n()V

    .line 882
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->o()V

    .line 884
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->I:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    .line 886
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->d()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->B:I

    .line 887
    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonType(I)V

    .line 889
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 890
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->w()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 892
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->h()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 893
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->J:Ljava/lang/String;

    const-string v0, "button_shape_dial_rotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 894
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->c()V

    goto :goto_0

    .line 896
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    :goto_0
    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0

    .line 829
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->F:F

    .line 833
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0

    .line 844
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->G:F

    .line 845
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setDialValue(I)V
    .locals 0

    .line 1283
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->r:I

    .line 1284
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 272
    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setPressed(Z)V

    if-eqz v0, :cond_5

    .line 275
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->p()V

    .line 277
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    .line 278
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iget v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p1, v4

    .line 280
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 281
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    int-to-float v3, v2

    sub-float/2addr v3, p1

    mul-float/2addr v3, v0

    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr v3, p1

    float-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->al:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 285
    :cond_3
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->D:F

    iget v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    goto :goto_2

    :cond_4
    int-to-float p1, v4

    .line 287
    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 288
    iget-object v1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->f:I

    int-to-float v3, v2

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->s:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    iget-object p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->am:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 293
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    :cond_5
    return-void

    :cond_6
    :goto_4
    const-string p1, "MainShutterButton"

    const-string v0, "setPressed, return because Animator is null"

    .line 266
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShutterButtonProgress(F)V
    .locals 3

    .line 1333
    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    const-string v1, "MainShutterButton"

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 1334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShutterButtonProgress, button type is error, mButtonType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1339
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterButtonProgress, progress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1341
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    .line 1343
    iget p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    .line 1344
    iput v0, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->u:I

    .line 1347
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/MainShutterButton;->invalidate()V

    return-void
.end method

.method public setShutterButtonTime(I)V
    .locals 0

    .line 1329
    iput p1, p0, Lcom/oppo/camera/ui/control/MainShutterButton;->q:I

    return-void
.end method

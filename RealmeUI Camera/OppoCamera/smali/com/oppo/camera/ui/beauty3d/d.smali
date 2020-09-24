.class public Lcom/oppo/camera/ui/beauty3d/d;
.super Ljava/lang/Object;
.source "Beauty3DEditUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/ui/OppoNumSeekBar$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/beauty3d/d$a;,
        Lcom/oppo/camera/ui/beauty3d/d$d;,
        Lcom/oppo/camera/ui/beauty3d/d$e;,
        Lcom/oppo/camera/ui/beauty3d/d$f;,
        Lcom/oppo/camera/ui/beauty3d/d$c;,
        Lcom/oppo/camera/ui/beauty3d/d$b;
    }
.end annotation


# instance fields
.field private A:Lcom/oppo/camera/ui/beauty3d/a;

.field private B:Lcom/oppo/camera/ui/beauty3d/a;

.field private C:Lcom/oppo/camera/ui/beauty3d/a;

.field private D:Lcom/oppo/camera/ui/beauty3d/a;

.field private E:Lcom/oppo/camera/ui/beauty3d/a;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Lcom/oppo/camera/ui/beauty3d/i;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/view/GestureDetector;

.field private L:Lcom/oppo/camera/ui/beauty3d/d$e;

.field private M:Lcom/oppo/camera/ui/beauty3d/d$b;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/camera/ui/beauty3d/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private O:Z

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private X:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private Y:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private Z:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private a:Landroid/graphics/Point;

.field private aA:Landroid/view/View$OnTouchListener;

.field private aB:Lcom/oppo/camera/ui/beauty3d/d$d;

.field private aa:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Z

.field private aj:Lcom/oppo/camera/ui/beauty3d/c;

.field private ak:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private al:I

.field private am:I

.field private an:F

.field private ao:Z

.field private ap:I

.field private aq:Z

.field private ar:Z

.field private as:[I

.field private at:[I

.field private au:[I

.field private av:[I

.field private aw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private ax:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private ay:I

.field private az:I

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Point;

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/ViewGroup;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroidx/recyclerview/widget/RecyclerView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Lcom/oppo/camera/ui/OppoNumSeekBar;

.field private x:Lcom/oppo/camera/ui/OppoNumSeekBar;

.field private y:Lcom/oppo/camera/ui/beauty3d/a;

.field private z:Lcom/oppo/camera/ui/beauty3d/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/ui/beauty3d/i;Landroid/widget/RelativeLayout;)V
    .locals 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    .line 89
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    .line 90
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    .line 91
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    .line 92
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    .line 93
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 94
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    .line 96
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    .line 97
    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    .line 98
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    .line 104
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    .line 105
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    .line 107
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    .line 109
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    .line 110
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    .line 111
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    .line 112
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    .line 113
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    .line 114
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    .line 115
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    .line 116
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    .line 117
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    .line 118
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    .line 119
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    .line 120
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    .line 121
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    .line 122
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    .line 123
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    .line 124
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->K:Landroid/view/GestureDetector;

    .line 125
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    .line 126
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    .line 127
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    .line 128
    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    .line 129
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    .line 130
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    .line 131
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    .line 132
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    .line 133
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    .line 134
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    .line 135
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    .line 136
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 137
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 138
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 139
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 140
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 141
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    .line 142
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    .line 143
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ad:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ae:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->af:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ag:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ah:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    .line 149
    new-instance v2, Lcom/oppo/camera/ui/beauty3d/c;

    invoke-direct {v2}, Lcom/oppo/camera/ui/beauty3d/c;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    .line 150
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 151
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    .line 152
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 v2, 0x0

    .line 153
    iput v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->an:F

    .line 154
    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    .line 155
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    .line 156
    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    const/4 v2, 0x1

    .line 157
    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ar:Z

    .line 158
    new-array v3, v2, [I

    const/4 v4, 0x2

    aput v4, v3, v1

    iput-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->as:[I

    .line 159
    new-array v3, v2, [I

    aput v2, v3, v1

    iput-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->at:[I

    .line 160
    new-array v2, v2, [I

    aput v1, v2, v1

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->au:[I

    const/16 v2, 0x8

    .line 161
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    .line 162
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    .line 163
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    .line 164
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    .line 165
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->az:I

    .line 167
    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$1;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    .line 207
    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$2;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aB:Lcom/oppo/camera/ui/beauty3d/d$d;

    .line 238
    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 239
    iput-object p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    .line 240
    iput-object p3, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    .line 241
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    new-instance p3, Lcom/oppo/camera/ui/beauty3d/d$a;

    invoke-direct {p3, p0, v0}, Lcom/oppo/camera/ui/beauty3d/d$a;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Lcom/oppo/camera/ui/beauty3d/d$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->K:Landroid/view/GestureDetector;

    .line 242
    new-instance p1, Landroid/graphics/Point;

    const/16 p2, 0x190

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    .line 243
    new-instance p1, Landroid/graphics/Point;

    const/16 p3, 0x3e8

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    .line 244
    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0x2bc

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    .line 245
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    .line 246
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    .line 247
    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/c/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private A()V
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    .line 777
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$3;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    .line 787
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    .line 788
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    .line 789
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    .line 790
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    .line 792
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 793
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 794
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 795
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 796
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 798
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 799
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 800
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 801
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 802
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 804
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ad:Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0044

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ae:Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->af:Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ag:Ljava/lang/String;

    .line 808
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ah:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private B()V
    .locals 5

    .line 942
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/d$e;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/beauty3d/d$e;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    .line 943
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/beauty3d/d$e;->b(I)V

    .line 944
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 946
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    .line 948
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 949
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 948
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 951
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 950
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701b8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 953
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 952
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701b9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 955
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 954
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/d$b;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aB:Lcom/oppo/camera/ui/beauty3d/d$d;

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/ui/beauty3d/d$b;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Ljava/util/List;Lcom/oppo/camera/ui/beauty3d/d$d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    .line 959
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 961
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$f;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060091

    .line 962
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/beauty3d/d$f;-><init>(Lcom/oppo/camera/ui/beauty3d/d;I)V

    .line 961
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 963
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->K()V

    return-void
.end method

.method private C()V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 1005
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1013
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/4 v0, 0x0

    .line 1016
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    return-void
.end method

.method private D()V
    .locals 5

    .line 1058
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->C()V

    .line 1060
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    if-eqz v4, :cond_0

    .line 1061
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1062
    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    .line 1063
    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    if-eqz v4, :cond_1

    .line 1067
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1068
    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    .line 1069
    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private E()V
    .locals 7

    .line 1132
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    .line 1138
    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->az:I

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    move v1, v2

    .line 1142
    :cond_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 1143
    aget v4, v0, v1

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    add-int/lit8 v1, v1, 0x1

    aget v5, v5, v1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 1157
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "beauty3d_style_mode"

    goto :goto_2

    :cond_6
    const-string v4, "beauty3d_style_lolita"

    goto :goto_2

    :cond_7
    const-string v4, "beauty3d_style_goose"

    goto :goto_2

    :cond_8
    const-string v4, "beauty3d_style_natural"

    :goto_2
    if-eqz v4, :cond_9

    const-string v1, "beauty3d_chose_style"

    .line 1183
    invoke-static {v1, v4}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v3

    .line 1187
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_high_nose_value"

    .line 1186
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v6

    .line 1189
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_small_nose_value"

    .line 1188
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v5

    .line 1191
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_eye_value"

    .line 1190
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    .line 1193
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_fix_face_value"

    .line 1192
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    .line 1195
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_small_face_value"

    .line 1194
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    .line 1197
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_cheekbone_value"

    .line 1196
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x7

    aget v1, v1, v3

    .line 1199
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_chin_value"

    .line 1198
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 1202
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v1, v3, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method private F()V
    .locals 3

    .line 1291
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method private G()V
    .locals 5

    const-string v0, "Beauty3DEditUI"

    const-string v1, "showSeekBar"

    .line 1323
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->F()V

    .line 1326
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->g()V

    .line 1328
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1336
    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    const/4 v2, 0x1

    const v3, 0x7f080202

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    const/4 v4, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 1352
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    .line 1353
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1354
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto/16 :goto_0

    .line 1358
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    .line 1359
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1360
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto/16 :goto_0

    .line 1364
    :cond_4
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    .line 1365
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1366
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    .line 1367
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1368
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto/16 :goto_0

    .line 1338
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    .line 1339
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1340
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto :goto_0

    .line 1344
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    .line 1345
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1346
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    .line 1347
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    .line 1348
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 4

    const-string v0, "Beauty3DEditUI"

    const-string v1, "hideAllSeekBar"

    .line 1377
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f080202

    .line 1380
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1382
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 3

    .line 1388
    new-instance v0, Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v2, 0x7f1001d4

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 1389
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->d(I)Lcolor/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$6;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    const v2, 0x7f0f0035

    .line 1390
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$5;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    const v2, 0x7f0f0020

    .line 1402
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method private J()V
    .locals 4

    .line 1413
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->v()V

    .line 1414
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->h()V

    .line 1415
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->L()V

    .line 1417
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1423
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1428
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1432
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1433
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1434
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Lcom/oppo/camera/o/d;->Z()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$7;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    .line 1446
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return-void
.end method

.method private K()V
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1451
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    .line 1452
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    const/4 v0, 0x2

    .line 1457
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    .line 1459
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1460
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    .line 1461
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 10

    .line 1516
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1518
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1519
    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v1, v0, v3

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 1523
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v4, v1

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    .line 1527
    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v5, v4

    .line 1530
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    .line 1531
    iget-object v6, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v6, v5

    .line 1534
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v6, 0x5

    if-eqz v0, :cond_4

    .line 1535
    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v7, v6

    .line 1538
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v7, 0x6

    if-eqz v0, :cond_5

    .line 1539
    iget-object v8, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v8, v7

    .line 1542
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v8, 0x7

    if-eqz v0, :cond_6

    .line 1543
    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v9, v8

    .line 1546
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFiveSenseParams, updateFiveSenseParams: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v2, v9, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v3, v9, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz v0, :cond_7

    .line 1557
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const-string v2, "com.oppo.beauty3d.custom.style"

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/i;->a(Ljava/lang/String;[I)V

    :cond_7
    return-void
.end method

.method private N()V
    .locals 3

    .line 1818
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    .line 1824
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 1825
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1826
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->an:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;)Lcom/oppo/camera/ui/beauty3d/i;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    return-object p0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 757
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 761
    iget p3, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    add-int/2addr p3, v1

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 762
    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 763
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 766
    :cond_1
    iget p3, p2, Landroid/graphics/Point;->x:I

    rsub-int p3, p3, 0x438

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    add-int/2addr p3, v1

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 767
    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 768
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "Beauty3DEditUI"

    const-string p2, "updateFiveSenseViewLayout, view or point null"

    .line 752
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ar:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/beauty3d/d;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/beauty3d/d;)[I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->au:[I

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/beauty3d/d;)Landroid/view/GestureDetector;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->K:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private c(II)V
    .locals 3

    .line 1303
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 1304
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p2, :cond_0

    .line 1307
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    .line 1309
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 1312
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p2, :cond_2

    .line 1315
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    .line 1317
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/beauty3d/d;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/beauty3d/d;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->H()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1241
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070172

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1242
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1244
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070173

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d([I)V
    .locals 3

    if-eqz p1, :cond_7

    .line 473
    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 478
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 479
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 483
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 484
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 488
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 489
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    .line 493
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 494
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    .line 498
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 499
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    .line 502
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_6

    const/4 v1, 0x5

    .line 503
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 504
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_7

    const/4 v1, 0x6

    .line 508
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    .line 509
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    aget p1, p1, v1

    iput p1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/beauty3d/d;)Landroid/app/Activity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1253
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070175

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1254
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1256
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070176

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/beauty3d/d;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/beauty3d/d;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->an:F

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/beauty3d/d;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/beauty3d/d;)[I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->at:[I

    return-object p0
.end method

.method private s()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 265
    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    if-nez v1, :cond_2

    .line 266
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 268
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    .line 271
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->w()V

    :cond_2
    return-void
.end method

.method private t()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    .line 280
    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 285
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 286
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 333
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0f002d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private v()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    .line 349
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 355
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private w()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 376
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    .line 377
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    .line 379
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    .line 380
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080173

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    .line 383
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    .line 384
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080202

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    .line 386
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080201

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    .line 387
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    .line 388
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080203

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    .line 389
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    .line 391
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setOnProgressChangedListener(Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    .line 407
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setOnProgressChangedListener(Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    .line 409
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->B()V

    return-void
.end method

.method private x()V
    .locals 5

    .line 687
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 691
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 694
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 696
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 698
    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    invoke-static {}, Lcom/oppo/camera/o/d;->R()I

    move-result v4

    sub-int/2addr v4, v2

    if-lez v4, :cond_1

    move v1, v4

    .line 703
    :cond_1
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 704
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshBottomLayout, bottomMargin: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private y()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    const-string v0, "Beauty3DEditUI"

    const-string v1, "initPreview"

    .line 719
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 722
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->A()V

    .line 727
    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    if-nez v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 729
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 731
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    .line 738
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->b(Z)V

    .line 740
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 741
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 742
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 743
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 744
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 745
    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 463
    :cond_0
    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    .line 465
    array-length v2, v0

    if-le v2, p1, :cond_1

    .line 466
    aget p1, v0, p1

    return p1

    :cond_1
    return v1
.end method

.method public a(II)V
    .locals 2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSeekBarProgress: progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_3

    .line 582
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_7

    .line 584
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    .line 560
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_6

    .line 565
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    .line 566
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_7

    .line 567
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(I[I)V
    .locals 2

    .line 1605
    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->az:I

    .line 1606
    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, v0, 0x7

    .line 1609
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    .line 1611
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V
    .locals 3

    .line 1483
    iput p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    .line 1484
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/b;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result p1

    invoke-direct {v1, v2, p1, p2}, Lcom/oppo/camera/ui/beauty3d/b;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/OppoNumSeekBar;IZ)V
    .locals 1

    .line 1475
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged, progress: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Beauty3DEditUI"

    invoke-static {v0, p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    .line 1478
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    .line 1831
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    .line 1832
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->N()V

    .line 1834
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1836
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    .line 1837
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v0

    sub-int/2addr v1, v0

    .line 1838
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    :cond_0
    const v9, 0x7f0501d2

    const/4 v8, 0x0

    .line 1845
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    return-void

    .line 1849
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->bringToFront()V

    .line 1850
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->D()V

    .line 969
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    .line 970
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    .line 971
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    .line 972
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    .line 973
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    .line 975
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    if-eqz p1, :cond_1

    .line 976
    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->f()V

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->e()V

    .line 980
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->b()V

    .line 981
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->b(Z)V

    .line 984
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->r()V

    .line 985
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/d$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/beauty3d/d$4;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a([I)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 444
    array-length v0, p1

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 448
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v2, v1, 0x7

    .line 451
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 453
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 818
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 819
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    const-string v1, "Beauty3DEditUI"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-object v3, p1, v2

    .line 821
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update CheekBone"

    .line 824
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    .line 829
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update Face"

    .line 832
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    aget-object v3, p1, v2

    .line 837
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update Chin"

    .line 840
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    aget-object v3, p1, v2

    .line 845
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 846
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update Nose"

    .line 848
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    aget-object v3, p1, v2

    .line 853
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "setFiveSenseTitles, update Eye"

    .line 856
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    const/4 v0, 0x0

    .line 515
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    .line 516
    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    .line 517
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/beauty3d/d;->d([I)V

    .line 525
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    .line 529
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    .line 530
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    .line 532
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    if-eqz p1, :cond_2

    .line 533
    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->f()V

    :cond_2
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 601
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->k()V

    .line 602
    iput p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->J()V

    :cond_0
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V
    .locals 5

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProgressOnActionUp, progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDownProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_1

    .line 1492
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    new-instance v2, Lcom/oppo/camera/ui/beauty3d/b;

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result v4

    invoke-direct {v2, v3, v4, p2}, Lcom/oppo/camera/ui/beauty3d/b;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    .line 1493
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/c;->e()V

    const/4 v0, 0x0

    .line 1494
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    .line 1496
    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 1497
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    goto :goto_0

    .line 1499
    :cond_0
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    .line 1502
    :goto_0
    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    goto :goto_1

    .line 1504
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result p1

    if-le p1, v1, :cond_2

    .line 1505
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->a()Lcom/oppo/camera/ui/beauty3d/b;

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 996
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    goto :goto_0

    .line 998
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b([I)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 866
    :cond_0
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    return-void

    .line 870
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ar:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 876
    aget v1, p1, v0

    rsub-int v1, v1, 0x5a0

    const/4 v2, 0x1

    .line 877
    aget v3, p1, v2

    rsub-int v3, v3, 0x438

    .line 879
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-eq v4, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 880
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iput v1, v4, Landroid/graphics/Point;->y:I

    .line 881
    iput v3, v4, Landroid/graphics/Point;->x:I

    move v1, v2

    :goto_1
    const/4 v3, 0x2

    .line 885
    aget v4, p1, v3

    rsub-int v4, v4, 0x5a0

    const/4 v5, 0x3

    .line 886
    aget v6, p1, v5

    rsub-int v6, v6, 0x438

    .line 888
    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ne v7, v4, :cond_5

    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-eq v7, v6, :cond_6

    .line 889
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 890
    iput v6, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_6
    const/4 v4, 0x4

    .line 894
    aget v6, p1, v4

    rsub-int v6, v6, 0x5a0

    const/4 v7, 0x5

    .line 895
    aget v8, p1, v7

    rsub-int v8, v8, 0x438

    .line 897
    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-ne v9, v6, :cond_7

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    if-eq v9, v8, :cond_8

    .line 898
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 899
    iput v8, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_8
    const/4 v6, 0x6

    .line 903
    aget v8, p1, v6

    rsub-int v8, v8, 0x5a0

    const/4 v9, 0x7

    .line 904
    aget v10, p1, v9

    rsub-int v10, v10, 0x438

    .line 906
    iget-object v11, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-ne v11, v8, :cond_9

    iget-object v11, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    if-eq v11, v10, :cond_a

    .line 907
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iput v8, v1, Landroid/graphics/Point;->y:I

    .line 908
    iput v10, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_a
    const/16 v8, 0x8

    .line 912
    aget v10, p1, v8

    rsub-int v10, v10, 0x5a0

    const/16 v11, 0x9

    .line 913
    aget v12, p1, v11

    rsub-int v12, v12, 0x438

    .line 915
    iget-object v13, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-ne v13, v10, :cond_b

    iget-object v13, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-eq v13, v12, :cond_c

    .line 916
    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iput v10, v1, Landroid/graphics/Point;->y:I

    .line 917
    iput v12, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_c
    if-eqz v1, :cond_d

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFiveSenseViewParams, result: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p1, v0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, p1, v2

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v11

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->b(Z)V

    .line 931
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 932
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 933
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 934
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    invoke-direct {p0, p1, v0, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 935
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    invoke-direct {p0, p1, v0, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 938
    :cond_d
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->y()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->x()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1595
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1599
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1600
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public c([I)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1562
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1566
    aget v0, p1, v0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 1569
    aget p1, p1, v0

    .line 1571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upParams, location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTouchLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbRedo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbChangeStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Beauty3DEditUI"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    if-eq v2, p1, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1584
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update, location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    .line 1587
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->G()V

    :cond_4
    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 310
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->t()V

    .line 311
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    .line 313
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    .line 314
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    .line 315
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    .line 316
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v2, 0x7f0f002d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    .line 318
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 414
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    if-eqz v0, :cond_2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateStyleViewPosition, mChoseStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    invoke-static {v0}, Lcom/oppo/camera/ui/beauty3d/d$b;->a(Lcom/oppo/camera/ui/beauty3d/d$b;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 544
    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    .line 545
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 547
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/d$b;->e()V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 592
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->c()V

    .line 593
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->f()V

    .line 595
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 9

    .line 610
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->d()V

    .line 611
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->s()V

    .line 612
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->z()V

    .line 614
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    const v1, 0x7f080201

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v5, 0x7f0701b4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    const v4, 0x7f0800c4

    if-nez v0, :cond_1

    .line 620
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f07016f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_2

    .line 624
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    const/16 v5, -0x32

    const/16 v6, 0x32

    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v8, 0x7f070167

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_3

    .line 629
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f070165

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_4

    .line 633
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f070166

    .line 634
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_5

    .line 638
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f0701b5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v1}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    .line 642
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_6

    .line 643
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v5, 0x7f070171

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_6
    return-void
.end method

.method public k()V
    .locals 4

    .line 649
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->x()V

    .line 650
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->u()V

    .line 652
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 663
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 668
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 672
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->K()V

    .line 673
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->H()V

    .line 675
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    .line 676
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 680
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    :cond_5
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return-void
.end method

.method public l()V
    .locals 1

    .line 1020
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->D()V

    const/4 v0, 0x0

    .line 1021
    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    .line 1022
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    .line 1023
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    const/4 v0, 0x0

    .line 1024
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    .line 1025
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    .line 1026
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    .line 1027
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    .line 1028
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    .line 1029
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    .line 1030
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    .line 1031
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    .line 1032
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    .line 1033
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    .line 1034
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    .line 1035
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    .line 1036
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    .line 1037
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 1038
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    .line 1039
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    .line 1040
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    .line 1041
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    .line 1042
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    .line 1043
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    .line 1044
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    .line 1045
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    .line 1046
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    .line 1047
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    .line 1048
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    .line 1049
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    .line 1050
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 1051
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 1052
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 1053
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 1054
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    return-void
.end method

.method public m()V
    .locals 6

    .line 1207
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1208
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1212
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    .line 1213
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->a()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/beauty3d/c;->b(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    .line 1214
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->a()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v3

    .line 1215
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/beauty3d/c;->b(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    .line 1217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Beauty3DEditAction, mValueOwner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mValueLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mSbValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Beauty3DEditUI"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->a:I

    iput v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    .line 1221
    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->b:I

    iget v3, v3, Lcom/oppo/camera/ui/beauty3d/b;->c:I

    invoke-virtual {p0, v4, v3}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    .line 1222
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    .line 1223
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->G()V

    .line 1225
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 1226
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    goto :goto_0

    .line 1228
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    .line 1231
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->d()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 1232
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    goto :goto_1

    .line 1234
    :cond_2
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    :goto_1
    return-void
.end method

.method public n()V
    .locals 6

    .line 1263
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/c;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1264
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1268
    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    .line 1269
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->b()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    .line 1270
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->b()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v3

    .line 1271
    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->a:I

    iput v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    .line 1272
    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->b:I

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->c:I

    invoke-virtual {p0, v4, v5}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    .line 1273
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    .line 1274
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->G()V

    .line 1275
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    .line 1277
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 1278
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    goto :goto_0

    .line 1280
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    .line 1283
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->d()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 1284
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    goto :goto_1

    .line 1286
    :cond_2
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    :goto_1
    return-void
.end method

.method public o()I
    .locals 1

    .line 1466
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800b4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1123
    :pswitch_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->n()V

    goto :goto_0

    .line 1119
    :pswitch_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->m()V

    goto :goto_0

    .line 1086
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Z)V

    .line 1088
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->as:[I

    const-string v1, "com.oppo.beauty3d.custom.mode"

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/i;->a(Ljava/lang/String;[I)V

    .line 1090
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/i;->b()V

    .line 1093
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->E()V

    goto :goto_0

    .line 1106
    :pswitch_3
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->I()V

    goto :goto_0

    .line 1097
    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_1

    .line 1098
    new-array v0, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const-string v1, "com.oppo.beauty3d.mode"

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/i;->a(Ljava/lang/String;[I)V

    .line 1102
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->J()V

    goto :goto_0

    .line 1077
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Z)V

    .line 1079
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_3

    .line 1080
    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/i;->a()V

    goto :goto_0

    .line 1110
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Z)V

    .line 1112
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_3

    .line 1113
    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/i;->a()V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800de
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080172
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()[I
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    return-object v0
.end method

.method public q()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 1616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBeauty3DEditCurrParams, mChoseStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDegree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Beauty3DEditUI"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const-string v3, "com.oppo.beauty3d.custom.style"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    :cond_0
    new-array v1, v2, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    aput v3, v1, v2

    const-string v2, "com.oppo.beauty3d.analyses.rotatedegree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public r()V
    .locals 2

    .line 1854
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

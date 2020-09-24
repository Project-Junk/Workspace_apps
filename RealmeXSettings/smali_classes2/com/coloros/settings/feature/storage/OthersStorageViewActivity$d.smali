.class final Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;
.super Landroid/widget/BaseAdapter;
.source "OthersStorageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/view/animation/PathInterpolator;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/util/SparseBooleanArray;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;

.field private j:Z

.field private k:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 579
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->c:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;",
            "Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;",
            ")V"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    .line 782
    new-instance v0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$1;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->k:Landroid/animation/Animator$AnimatorListener;

    .line 597
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->d:Landroid/content/Context;

    .line 598
    iput-object p3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;

    .line 599
    iget-object p3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->j:Z

    .line 600
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    .line 601
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 602
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->g:I

    .line 603
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c80000    # 25.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->h:I

    .line 604
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private synthetic a(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 685
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_0

    .line 686
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 689
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;

    if-eqz p2, :cond_1

    .line 690
    invoke-interface {p2, p1, p3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;->onCheckBoxChangedListener(IZ)V

    :cond_1
    return-void
.end method

.method private a(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;FF)V
    .locals 1

    .line 774
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 775
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 776
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xe6

    .line 777
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->k:Landroid/animation/Animator$AnimatorListener;

    .line 778
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 779
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;)Z
    .locals 1

    const/4 v0, 0x0

    .line 575
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->f:Z

    return v0
.end method

.method public static synthetic lambda$bWSpc7I223iVc6A0NltH88uwYB0(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 819
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 820
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method final a(Z)V
    .locals 0

    .line 805
    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->e:Z

    .line 807
    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->f:Z

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->notifyDataSetChanged()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 837
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 616
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/storage/a/a;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 642
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0242

    .line 643
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 644
    new-instance p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;

    invoke-direct {p3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;-><init>()V

    const v1, 0x7f0a0137

    .line 645
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    const v1, 0x7f0a0289

    .line 646
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->b:Landroid/widget/ImageView;

    const v1, 0x7f0a028a

    .line 647
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->c:Landroid/widget/TextView;

    const v1, 0x7f0a028b

    .line 648
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->d:Landroid/widget/TextView;

    .line 649
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 650
    iget-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0, v0}, Landroid/widget/CheckBox;->measure(II)V

    .line 651
    iget-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v1

    .line 652
    iget v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->g:I

    sub-int/2addr v2, v1

    iput v2, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->e:I

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;

    .line 657
    :goto_0
    iget-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->c:Landroid/widget/TextView;

    const-string v2, "OthersStorageViewActivity"

    if-nez v1, :cond_1

    const-string p1, "getView fileName = null return;"

    .line 658
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 1703
    :cond_1
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->e:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1704
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->f:Z

    if-eqz v1, :cond_2

    .line 1705
    invoke-direct {p0, p3, v4, v3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;FF)V

    goto :goto_1

    .line 1707
    :cond_2
    iget-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_1

    .line 1711
    :cond_3
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->f:Z

    if-eqz v1, :cond_4

    .line 1712
    invoke-direct {p0, p3, v3, v4}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;FF)V

    goto :goto_1

    .line 1714
    :cond_4
    iget-object v1, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 666
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_5

    .line 667
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/storage/a/a;

    .line 668
    iget-object v3, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->c:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "otherFilePosition.fileType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/coloros/settings/feature/storage/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->d:Landroid/content/Context;

    iget v4, v1, Lcom/coloros/settings/feature/storage/a/a;->a:I

    invoke-static {v3, v4}, Lcom/coloros/settings/feature/storage/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 673
    iget-object v4, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->d:Landroid/content/Context;

    iget-wide v4, v1, Lcom/coloros/settings/feature/storage/a/a;->b:J

    invoke-static {v3, v4, v5}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v2, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    :cond_5
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-gt v1, p1, :cond_6

    .line 681
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 684
    :cond_6
    iget-object v0, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$d$bWSpc7I223iVc6A0NltH88uwYB0;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$d$bWSpc7I223iVc6A0NltH88uwYB0;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 695
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 696
    iget-object p3, p3, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    return-object p2
.end method

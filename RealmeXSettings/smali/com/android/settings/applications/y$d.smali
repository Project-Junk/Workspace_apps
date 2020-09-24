.class final Lcom/android/settings/applications/y$d;
.super Lcom/android/settings/applications/y$c;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field n:Lcom/android/settings/applications/y$f;

.field o:Lcom/android/settings/applications/y$j;

.field final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$g;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/y$c;-><init>(ZI)V

    .line 607
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    .line 609
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 611
    iput p1, p0, Lcom/android/settings/applications/y$d;->s:I

    iput p1, p0, Lcom/android/settings/applications/y$d;->t:I

    return-void
.end method

.method private a(Landroid/content/Context;II)V
    .locals 4

    .line 618
    iget v0, p0, Lcom/android/settings/applications/y$d;->s:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/settings/applications/y$d;->t:I

    if-eq v0, p3, :cond_4

    .line 619
    :cond_0
    iput p2, p0, Lcom/android/settings/applications/y$d;->s:I

    .line 620
    iput p3, p0, Lcom/android/settings/applications/y$d;->t:I

    const v0, 0x7f1212b4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p3, v1, :cond_1

    const v0, 0x7f1212b1

    goto :goto_0

    :cond_1
    const v0, 0x7f1212b2

    goto :goto_0

    :cond_2
    if-eq p3, v1, :cond_3

    const v0, 0x7f1212b3

    .line 629
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    .line 630
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    .line 629
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y$d;->f:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/android/settings/applications/y;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    if-nez v0, :cond_0

    .line 712
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/y$c;->a(Landroid/content/Context;Lcom/android/settings/applications/y;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 714
    :cond_0
    iget-object p2, v0, Lcom/android/settings/applications/y$j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 715
    iget-object p1, p0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    iget-object p1, p1, Lcom/android/settings/applications/y$j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-nez p1, :cond_1

    .line 717
    iget-object p1, p0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    iget-object p1, p1, Lcom/android/settings/applications/y$j;->c:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 719
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "com.android.internal.R.drawable.ic_menu_cc"

    .line 723
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 722
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroid/content/Context;)Z
    .locals 7

    .line 684
    iget-object v0, p0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 685
    iput-wide v2, p0, Lcom/android/settings/applications/y$d;->i:J

    move v0, v1

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/y$d;

    .line 688
    invoke-virtual {v2, p1}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;)Z

    .line 689
    iget-wide v3, p0, Lcom/android/settings/applications/y$d;->i:J

    iget-wide v5, v2, Lcom/android/settings/applications/y$d;->i:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/y$d;->i:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-wide v2, v0, Lcom/android/settings/applications/y$f;->i:J

    iput-wide v2, p0, Lcom/android/settings/applications/y$d;->i:J

    move v0, v1

    .line 693
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 694
    iget-wide v2, p0, Lcom/android/settings/applications/y$d;->i:J

    iget-object v4, p0, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/y$f;

    iget-wide v4, v4, Lcom/android/settings/applications/y$f;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/y$d;->i:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 698
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/applications/y$d;->i:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 700
    iget-object v0, p0, Lcom/android/settings/applications/y$d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    iput-object p1, p0, Lcom/android/settings/applications/y$d;->j:Ljava/lang/String;

    :cond_2
    return v1
.end method

.method final a(Landroid/content/Context;Z)Z
    .locals 10

    .line 635
    iput-boolean p2, p0, Lcom/android/settings/applications/y$d;->m:Z

    .line 637
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    .line 643
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/y$d;

    .line 644
    iget-object p2, p2, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p2, p2, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;

    iput-object p2, p0, Lcom/android/settings/applications/y$d;->c:Landroid/content/pm/PackageItemInfo;

    .line 645
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/settings/applications/y$j;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    .line 646
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/applications/y$d;->d:Ljava/lang/CharSequence;

    .line 649
    iput-wide v2, p0, Lcom/android/settings/applications/y$d;->h:J

    move p2, v4

    move v2, p2

    move v3, v2

    .line 650
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_2

    .line 651
    iget-object v5, p0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/y$d;

    .line 652
    iget v6, v5, Lcom/android/settings/applications/y$d;->s:I

    add-int/2addr v2, v6

    .line 653
    iget v6, v5, Lcom/android/settings/applications/y$d;->t:I

    add-int/2addr v3, v6

    .line 654
    iget-wide v6, v5, Lcom/android/settings/applications/y$d;->h:J

    cmp-long v6, v6, v0

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lcom/android/settings/applications/y$d;->h:J

    iget-wide v8, v5, Lcom/android/settings/applications/y$d;->h:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 655
    iget-wide v5, v5, Lcom/android/settings/applications/y$d;->h:J

    iput-wide v5, p0, Lcom/android/settings/applications/y$d;->h:J

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 658
    :cond_2
    iget-boolean p2, p0, Lcom/android/settings/applications/y$d;->m:Z

    if-nez p2, :cond_7

    .line 659
    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;II)V

    goto :goto_4

    .line 662
    :cond_3
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p2, p2, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;

    iput-object p2, p0, Lcom/android/settings/applications/y$d;->c:Landroid/content/pm/PackageItemInfo;

    .line 663
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p2, p2, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/applications/y$d;->d:Ljava/lang/CharSequence;

    .line 664
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p2, p2, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/applications/y$d;->e:Ljava/lang/String;

    .line 666
    iget-boolean p2, p0, Lcom/android/settings/applications/y$d;->m:Z

    if-nez p2, :cond_5

    .line 667
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget p2, p2, Lcom/android/settings/applications/y$f;->r:I

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr p2, v5

    iget-object v5, p0, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    .line 668
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 667
    invoke-direct {p0, p1, p2, v5}, Lcom/android/settings/applications/y$d;->a(Landroid/content/Context;II)V

    .line 671
    :cond_5
    iput-wide v2, p0, Lcom/android/settings/applications/y$d;->h:J

    move p1, v4

    .line 672
    :goto_3
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 673
    iget-object p2, p0, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/y$g;

    .line 674
    iget-wide v2, p2, Lcom/android/settings/applications/y$g;->h:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_6

    iget-wide v2, p0, Lcom/android/settings/applications/y$d;->h:J

    iget-wide v5, p2, Lcom/android/settings/applications/y$g;->h:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_6

    .line 675
    iget-wide v2, p2, Lcom/android/settings/applications/y$g;->h:J

    iput-wide v2, p0, Lcom/android/settings/applications/y$d;->h:J

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return v4
.end method

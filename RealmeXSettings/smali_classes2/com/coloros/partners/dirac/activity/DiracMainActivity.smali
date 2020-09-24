.class public Lcom/coloros/partners/dirac/activity/DiracMainActivity;
.super Lcom/coloros/partners/dirac/activity/AbsActivity;
.source "DiracMainActivity.java"


# static fields
.field private static final e:Ljava/lang/String; = "DiracMainActivity"


# instance fields
.field private A:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

.field private D:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

.field d:Landroid/os/Handler;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/color/support/widget/ColorSwitch;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ScrollView;

.field private m:Lcolor/support/design/widget/ColorAppBarLayout;

.field private n:Lcom/coloros/partners/dirac/widget/EqualizerView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Lcom/oppo/a/a/a/b$a;

.field private z:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->w:Z

    .line 101
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->y:Lcom/oppo/a/a/a/b$a;

    .line 104
    new-instance v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$1;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->A:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 120
    new-instance v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->B:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$3;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$4;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->C:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    .line 238
    new-instance v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$5;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->D:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Lcom/color/support/widget/ColorSwitch;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    return-object p0
.end method

.method private a(IZZ)V
    .locals 7

    .line 617
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateEqualizer, index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromSelect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHeadset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " force=true, mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 623
    invoke-direct {p0, v4}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e(Z)V

    .line 624
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    new-array p2, v2, [I

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result p3

    aput p3, p2, v3

    iget-object p3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result p3

    aput p3, p2, v4

    iget-object p3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    .line 625
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result p3

    aput p3, p2, v1

    .line 624
    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    return-void

    :cond_1
    if-ltz p1, :cond_b

    .line 629
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 634
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {p2, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelectedItem(I)V

    :cond_3
    if-nez p1, :cond_4

    .line 638
    invoke-direct {p0, v4}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e(Z)V

    .line 639
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    new-array v0, v2, [I

    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result v2

    aput v2, v0, v4

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    .line 640
    invoke-virtual {v2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result v2

    aput v2, v0, v1

    .line 639
    invoke-virtual {p2, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    if-eqz p3, :cond_a

    .line 642
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Z)V

    goto/16 :goto_1

    :cond_4
    const/16 p2, 0xb

    if-ne p1, p2, :cond_8

    .line 645
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->q()V

    const/4 p2, 0x0

    .line 647
    invoke-static {p0, p3, p2}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 649
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    goto :goto_0

    .line 651
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->m()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 653
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    .line 657
    :cond_6
    :goto_0
    invoke-static {p0, p3}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;Z)[I

    move-result-object v0

    .line 658
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v5, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    if-eqz p3, :cond_a

    if-eqz p2, :cond_7

    .line 661
    array-length v5, p2

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 663
    aget v3, v0, v3

    int-to-float v3, v3

    aput v3, p2, v4

    .line 664
    aget v3, v0, v4

    int-to-float v3, v3

    aput v3, p2, v2

    const/4 v2, 0x5

    .line 665
    aget v0, v0, v1

    int-to-float v0, v0

    aput v0, p2, v2

    .line 667
    :cond_7
    invoke-virtual {p0, v4}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Z)V

    .line 668
    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 671
    :cond_8
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->q()V

    .line 672
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->c(Z)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    .line 673
    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    if-eqz p2, :cond_9

    .line 674
    array-length v0, p2

    if-ne v0, v2, :cond_9

    .line 675
    new-array v0, v2, [I

    .line 676
    aget v2, p2, v3

    float-to-int v2, v2

    aput v2, v0, v3

    .line 677
    aget v2, p2, v4

    float-to-int v2, v2

    aput v2, v0, v4

    .line 678
    aget p2, p2, v1

    float-to-int p2, p2

    aput p2, v0, v1

    .line 679
    invoke-static {v0}, Lcom/coloros/partners/dirac/a/d;->a([I)V

    .line 680
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {p2, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    :cond_9
    if-eqz p3, :cond_a

    .line 683
    invoke-virtual {p0, v4}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Z)V

    .line 684
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Ljava/lang/String;)V

    .line 688
    :cond_a
    :goto_1
    sget-object p2, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateEqualizer, support="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 690
    invoke-static {p0, p1, p3}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V

    :cond_b
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V
    .locals 1

    .line 10718
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->z:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 10719
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 10721
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->z:Landroid/widget/Toast;

    .line 10722
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->z:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, v0, p2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(IZZ)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;Z)V
    .locals 3

    .line 12446
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchOnOff, isOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 12447
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_3

    .line 12451
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 12452
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v1

    .line 12453
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    .line 12454
    sget-object p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    const-string p1, "switchOnOff, same as before."

    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 12459
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->c(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 12461
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->c(Z)V

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 12465
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 12466
    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Z)V

    return-void

    .line 12468
    :cond_2
    invoke-static {p0, v1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result p1

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(IZZ)V

    :cond_3
    return-void
.end method

.method private a(ZZ)V
    .locals 3

    .line 603
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateEqualizer, isHeadset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result p2

    if-nez p2, :cond_1

    .line 605
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 606
    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelectedItem(I)V

    :cond_0
    return-void

    .line 610
    :cond_1
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    if-eqz p2, :cond_2

    .line 611
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelectedItem(I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Lcom/oppo/a/a/a/b$a;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->y:Lcom/oppo/a/a/a/b$a;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/DiracMainActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(ZZ)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->o()V

    return-void
.end method

.method static synthetic d(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V
    .locals 3

    .line 13695
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->getSelectedItemPosition()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 13696
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelection(IZ)V

    .line 13704
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 13705
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/16 v0, 0x15

    invoke-virtual {p0, v0, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void

    .line 13707
    :cond_0
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_1
    return-void
.end method

.method private d(Z)V
    .locals 3

    .line 538
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableEqualizer, enable="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setIsEnable(Z)V

    .line 541
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->u:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 542
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0601cf

    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->u:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->q()V

    return-void

    .line 549
    :cond_1
    invoke-direct {p0, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e(Z)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 552
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e(Z)V

    .line 553
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setIsEnable(Z)V

    .line 554
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->l:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private e(Z)V
    .locals 3

    .line 559
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableEqualizerView, manual="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setTouchDisabled(Z)V

    .line 561
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x3e99999a    # 0.3f

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    .line 562
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 563
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setAlpha(F)V

    .line 564
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 565
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 566
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    if-nez p1, :cond_1

    .line 570
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->u:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 571
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0601d0

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 9

    .line 474
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->w:Z

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "updateBtnStatus, not resume"

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f()Z

    move-result v0

    const v1, 0x7f080519

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x66

    .line 483
    iput v4, v0, Landroid/os/Message;->what:I

    const v5, 0x7f1207de

    .line 484
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 485
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v4, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 487
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 488
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 489
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 490
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Z)V

    :cond_1
    return-void

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i()Z

    move-result v0

    .line 497
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v4

    .line 498
    sget-object v5, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateBtnStatus, effectEnabled="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v5, :cond_7

    .line 501
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->l()Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v6

    .line 503
    iput-object v6, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->y:Lcom/oppo/a/a/a/b$a;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_4

    .line 506
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 507
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->y:Lcom/oppo/a/a/a/b$a;

    sget-object v8, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-eq v0, v8, :cond_3

    .line 508
    invoke-direct {p0, v7}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Z)V

    goto :goto_0

    .line 510
    :cond_3
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Z)V

    goto :goto_0

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 514
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Z)V

    goto :goto_0

    .line 517
    :cond_5
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 518
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d(Z)V

    .line 521
    :goto_0
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "updateBtnStatus, effectModeName="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", effectSceneMode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    .line 524
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 525
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h:Landroid/widget/ImageView;

    const v1, 0x7f08051a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 527
    :cond_6
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 528
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 531
    :goto_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 533
    :cond_7
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "updateBtnStatus, mService is null"

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static p()Z
    .locals 2

    .line 579
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setTouchDisabled(Z)V

    .line 588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 589
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->j:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 590
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setAlpha(F)V

    .line 591
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 592
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 593
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 594
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 596
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0601cf

    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 417
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doOnServiceConnected, name="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-super {p0, p1, p2}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 419
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 420
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    .line 437
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doDiracServiceConnectStatusCallback, status="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-super {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Z)V

    .line 439
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 440
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final c()V
    .locals 3

    .line 427
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "doDiracServiceStatusChangeCallback"

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->c()V

    .line 429
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 430
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 745
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onBackPressed()V

    .line 746
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->finish()V

    const v0, 0x7f010062

    const v1, 0x7f010063

    .line 747
    invoke-virtual {p0, v0, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1753
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1755
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "com.coloros.partners.dirac.SevenDiracMainActivity"

    .line 1756
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1758
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->finish()V

    .line 260
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;)V

    const p1, 0x7f0d015e

    .line 262
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->setContentView(I)V

    .line 263
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 264
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 265
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 267
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a()V

    const p1, 0x7f0a0268

    .line 3288
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a01fa

    .line 3289
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a01f8

    .line 3290
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h:Landroid/widget/ImageView;

    const p1, 0x7f0a03af

    .line 3291
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->k:Landroid/view/View;

    .line 3292
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f9

    .line 3293
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    const p1, 0x7f0a072f

    .line 3294
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f:Landroid/widget/TextView;

    const p1, 0x7f0a072c

    .line 3295
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->r:Landroid/widget/TextView;

    const p1, 0x7f0a073b

    .line 3296
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->s:Landroid/widget/TextView;

    const p1, 0x7f0a0744

    .line 3297
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->t:Landroid/widget/TextView;

    .line 3298
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->A:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3299
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    new-instance v1, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;

    invoke-direct {v1, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$6;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a05b8

    .line 3327
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->l:Landroid/widget/ScrollView;

    const v1, 0x7f0a000b

    .line 3328
    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->m:Lcolor/support/design/widget/ColorAppBarLayout;

    const/4 v1, 0x1

    .line 3728
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "global_dirac"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3729
    :try_start_1
    sget-object v3, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    const-string v4, " state= "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v2, v1

    .line 3731
    :catch_1
    sget-object v3, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    const-string v4, "initViews, not found setting."

    invoke-static {v3, v4}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->y:Lcom/oppo/a/a/a/b$a;

    .line 3734
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3735
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    if-ne v1, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    goto :goto_2

    .line 3739
    :cond_2
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    :goto_2
    const v2, 0x7f0a0277

    .line 4335
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/EqualizerView;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    .line 4336
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    new-instance v3, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;

    invoke-direct {v3, p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity$7;-><init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4378
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->C:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setEqualizerListener(Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;)V

    const v2, 0x7f0a072b

    .line 4379
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->o:Landroid/widget/TextView;

    const v2, 0x7f0a073a

    .line 4380
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->p:Landroid/widget/TextView;

    const v2, 0x7f0a0743

    .line 4381
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->q:Landroid/widget/TextView;

    const v2, 0x7f0a03f9

    .line 4382
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const v2, 0x7f0a00eb

    .line 4383
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->u:Landroid/view/View;

    .line 4384
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/a/d;->a(Z)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setDTSModeList(Ljava/util/List;)V

    .line 4385
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->v:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->D:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setOnItemChangeListener(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;)V

    .line 269
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "AccessOppoDirac"

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OppoMusic"

    .line 271
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    goto :goto_3

    :cond_3
    const-string v3, "Setting"

    .line 273
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    :cond_4
    :goto_3
    const v2, 0x7f0a0160

    .line 277
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f0804bb

    .line 278
    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 279
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 281
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 282
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 283
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const p1, 0x7f1207db

    .line 284
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->x:Ljava/lang/String;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onPause()V

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->w:Z

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 390
    sget-object v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume, mService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onResume()V

    .line 392
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    .line 393
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMaxProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%ddb"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 394
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 395
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v7}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iput-boolean v1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->w:Z

    .line 400
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b()V

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 404
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->o()V

    .line 405
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->h()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(ZZ)V

    return-void
.end method

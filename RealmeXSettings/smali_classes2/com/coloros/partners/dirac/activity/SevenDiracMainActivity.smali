.class public Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.super Lcom/coloros/partners/dirac/activity/AbsActivity;
.source "SevenDiracMainActivity.java"


# static fields
.field static d:[Ljava/lang/String; = null

.field private static final g:Ljava/lang/String; = "SevenDiracMainActivity"

.field private static final h:[I


# instance fields
.field private A:Landroid/widget/Toast;

.field private B:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

.field e:Landroidx/appcompat/app/AppCompatDialog;

.field f:Landroid/os/Handler;

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/color/support/widget/ColorSwitch;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ScrollView;

.field private q:Lcolor/support/design/widget/ColorAppBarLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Lcom/coloros/partners/dirac/widget/EqualizerView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Ljava/lang/String;

.field private z:Lcom/oppo/a/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 96
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e:Landroidx/appcompat/app/AppCompatDialog;

    .line 117
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->z:Lcom/oppo/a/a/a/b$a;

    .line 119
    new-instance v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$1;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->B:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 135
    new-instance v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->C:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$5;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$6;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->D:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Lcom/color/support/widget/ColorSwitch;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    return-object p0
.end method

.method private a(IZZZ)V
    .locals 5

    .line 612
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

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

    const-string v2, " force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 618
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    sget-object p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e(Z)V

    .line 620
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    sget-object p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h:[I

    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    return-void

    :cond_1
    if-ltz p1, :cond_c

    .line 624
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez p2, :cond_3

    .line 629
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez p1, :cond_4

    .line 633
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e(Z)V

    .line 634
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h:[I

    invoke-virtual {p2, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 636
    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Z)V

    goto/16 :goto_3

    :cond_4
    const/16 p2, 0xb

    const/4 v0, 0x7

    if-ne p1, p2, :cond_8

    .line 639
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->r()V

    const/4 p2, 0x0

    .line 641
    invoke-static {p0, p3, p2}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 643
    invoke-static {v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    goto :goto_0

    .line 645
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 647
    invoke-static {v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object v4

    if-eqz v4, :cond_6

    .line 648
    invoke-static {v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    .line 653
    :cond_6
    :goto_0
    new-array v3, v0, [I

    if-eqz p2, :cond_7

    :goto_1
    if-ge v1, v0, :cond_7

    .line 656
    aget v4, p2, v1

    float-to-int v4, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 659
    :cond_7
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v0, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 661
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Z)V

    .line 662
    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 666
    :cond_8
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->r()V

    .line 667
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    .line 668
    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    if-eqz p2, :cond_a

    .line 669
    array-length v3, p2

    if-ne v3, v0, :cond_a

    .line 670
    new-array v3, v0, [I

    :goto_2
    if-ge v1, v0, :cond_9

    .line 672
    aget v4, p2, v1

    float-to-int v4, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 674
    :cond_9
    invoke-static {v3}, Lcom/coloros/partners/dirac/a/d;->a([I)V

    .line 675
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {p2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    :cond_a
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 678
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Z)V

    .line 679
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Ljava/lang/String;)V

    .line 683
    :cond_b
    :goto_3
    sget-object p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateEqualizer, support="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_c

    .line 684
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 685
    invoke-static {p0, p1, p3}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V

    :cond_c
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V
    .locals 1

    .line 9695
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->A:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 9696
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 9698
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->A:Landroid/widget/Toast;

    .line 9699
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->A:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(IZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Z)V
    .locals 3

    .line 11444
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchOnOff, isOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 11445
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_3

    .line 11449
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 11450
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v1

    .line 11451
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    .line 11452
    sget-object p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    const-string p1, "switchOnOff, same as before."

    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 11457
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->c(Z)V

    goto :goto_0

    .line 11459
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->c(Z)V

    :goto_0
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 11463
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 11464
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Z)V

    return-void

    .line 11466
    :cond_2
    invoke-static {p0, v1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result p1

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(IZZZ)V

    :cond_3
    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .line 596
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateEqualizer, isHeadset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 598
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    sget-object p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h:[I

    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    .line 600
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    sget-object p2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 606
    sget-object v2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :cond_2
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(IZZZ)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Lcom/oppo/a/a/a/b$a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->z:Lcom/oppo/a/a/a/b$a;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(ZZ)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->p()V

    return-void
.end method

.method static synthetic d(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroidx/appcompat/app/AppCompatDialog;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e:Landroidx/appcompat/app/AppCompatDialog;

    return-object p0
.end method

.method private d(Z)V
    .locals 3

    .line 537
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableEqualizer, enable="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 540
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 541
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0601cf

    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->r()V

    return-void

    .line 547
    :cond_1
    invoke-direct {p0, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e(Z)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 550
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e(Z)V

    .line 551
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method private e(Z)V
    .locals 3

    .line 556
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableEqualizerView, manual="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setTouchDisabled(Z)V

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x3e99999a    # 0.3f

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    .line 559
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 560
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setAlpha(F)V

    .line 561
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    if-nez p1, :cond_1

    .line 565
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 566
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0601d0

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->p:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()[Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 9

    .line 472
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i:Z

    if-nez v0, :cond_0

    .line 473
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    const-string v1, "updateBtnStatus, not resume"

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f()Z

    move-result v0

    const v1, 0x7f080519

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x66

    .line 482
    iput v4, v0, Landroid/os/Message;->what:I

    const v5, 0x7f1207de

    .line 483
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 484
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v4, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 486
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 487
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 489
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Z)V

    :cond_1
    return-void

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i()Z

    move-result v0

    .line 496
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v4

    .line 497
    sget-object v5, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateBtnStatus, effectEnabled="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v5, :cond_7

    .line 500
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->l()Ljava/lang/String;

    move-result-object v5

    .line 501
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v6

    .line 502
    iput-object v6, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->z:Lcom/oppo/a/a/a/b$a;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_4

    .line 505
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 506
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->z:Lcom/oppo/a/a/a/b$a;

    sget-object v8, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-eq v0, v8, :cond_3

    .line 507
    invoke-direct {p0, v7}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Z)V

    goto :goto_0

    .line 509
    :cond_3
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Z)V

    goto :goto_0

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 513
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Z)V

    goto :goto_0

    .line 516
    :cond_5
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 517
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d(Z)V

    .line 520
    :goto_0
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

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

    .line 523
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->k:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 524
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f08051a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 526
    :cond_6
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 527
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    :goto_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 532
    :cond_7
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    const-string v1, "updateBtnStatus, mService is null"

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static q()Z
    .locals 2

    .line 574
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()V
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setTouchDisabled(Z)V

    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 584
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->n:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 585
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setAlpha(F)V

    .line 586
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 587
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 589
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0601cf

    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 415
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doOnServiceConnected, name="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-super {p0, p1, p2}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 417
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 418
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    .line 435
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doDiracServiceConnectStatusCallback, status="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-super {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Z)V

    .line 437
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 438
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final c()V
    .locals 3

    .line 425
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    const-string v1, "doDiracServiceStatusChangeCallback"

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->c()V

    .line 427
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 428
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 807
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onBackPressed()V

    .line 808
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->finish()V

    const v0, 0x7f010062

    const v1, 0x7f010063

    .line 809
    invoke-virtual {p0, v0, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 259
    invoke-super {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;)V

    .line 261
    invoke-static {}, Lcom/coloros/partners/dirac/a/d;->a()[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    const p1, 0x7f1207db

    .line 262
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->y:Ljava/lang/String;

    const p1, 0x7f0d015f

    .line 263
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->setContentView(I)V

    .line 264
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 265
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 266
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a()V

    const p1, 0x7f0a0268

    .line 2289
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f0a01fa

    .line 2290
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->k:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a01f8

    .line 2291
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->l:Landroid/widget/ImageView;

    const p1, 0x7f0a03af

    .line 2292
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->o:Landroid/view/View;

    .line 2293
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f9

    .line 2294
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    const p1, 0x7f0a072f

    .line 2295
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a072c

    .line 2296
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->v:Landroid/widget/TextView;

    const p1, 0x7f0a073b

    .line 2297
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->w:Landroid/widget/TextView;

    const p1, 0x7f0a0744

    .line 2298
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->x:Landroid/widget/TextView;

    const p1, 0x7f0a0687

    .line 2299
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    .line 2300
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->u:Landroid/widget/TextView;

    sget-object v1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a023f

    .line 2301
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    .line 2302
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2303
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->B:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2304
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    new-instance v1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;

    invoke-direct {v1, p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$7;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a05b8

    .line 2330
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->p:Landroid/widget/ScrollView;

    const v1, 0x7f0a000b

    .line 2331
    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->q:Lcolor/support/design/widget/ColorAppBarLayout;

    const/4 v1, 0x1

    .line 2705
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "global_dirac"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2706
    :try_start_1
    sget-object v3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

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

    .line 2708
    :catch_1
    sget-object v3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    const-string v4, "initViews, not found setting."

    invoke-static {v3, v4}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->z:Lcom/oppo/a/a/a/b$a;

    .line 2711
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2712
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    if-ne v1, v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    goto :goto_2

    .line 2714
    :cond_1
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->m:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    :goto_2
    const v2, 0x7f0a0277

    .line 3338
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/EqualizerView;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    .line 3339
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setmSeekbarCount(I)V

    .line 3340
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    new-instance v3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;

    invoke-direct {v3, p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$8;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3382
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->D:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    invoke-virtual {v2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setEqualizerListener(Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;)V

    const v2, 0x7f0a03b4

    .line 3383
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->r:Landroid/widget/LinearLayout;

    .line 270
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "AccessOppoDirac"

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OppoMusic"

    .line 272
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    goto :goto_3

    :cond_2
    const-string v3, "Setting"

    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    :cond_3
    :goto_3
    const v2, 0x7f0a0160

    .line 278
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f0804bb

    .line 279
    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 280
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 282
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 283
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 409
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onPause()V

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i:Z

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 388
    sget-object v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume, mService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onResume()V

    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    .line 391
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v3}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMaxProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%ddb"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 392
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 393
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/EqualizerView;

    invoke-virtual {v7}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getMinProgress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iput-boolean v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->i:Z

    .line 398
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b()V

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 402
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->p()V

    .line 403
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->h()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(ZZ)V

    return-void
.end method

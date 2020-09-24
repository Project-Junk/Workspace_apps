.class public Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;
.super Lcom/coloros/partners/dirac/activity/AbsActivity;
.source "NewDiracMainActivity.java"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:[I


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/Toast;

.field private E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

.field private H:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

.field d:Landroid/os/Handler;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/color/support/widget/ColorSwitch;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ScrollView;

.field private n:Lcolor/support/design/widget/ColorAppBarLayout;

.field private o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Lcom/oppo/a/a/a/b$a;

.field private x:Landroid/view/ViewGroup;

.field private y:Lcom/coloros/settings/widget/SettingsColorListView;

.field private z:Lcom/coloros/partners/dirac/activity/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const/4 v0, 0x7

    .line 90
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f:[I

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

    .line 71
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->u:Z

    .line 108
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    .line 117
    new-instance v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$1;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 133
    new-instance v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->F:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$3;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    .line 217
    new-instance v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$4;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->G:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    .line 255
    new-instance v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$5;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$5;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->H:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/color/support/widget/ColorSwitch;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Lcom/oppo/a/a/a/b$a;)Lcom/oppo/a/a/a/b$a;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    return-object p1
.end method

.method private a(IZZ)V
    .locals 6

    .line 812
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    return-void

    .line 817
    :cond_0
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 818
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 819
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getMinProgress()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 823
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e(Z)V

    .line 824
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {p1, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setProgress([I)V

    return-void

    :cond_2
    if-ltz p1, :cond_f

    .line 828
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt p1, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    if-nez p2, :cond_4

    .line 833
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {p2, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelectedItem(I)V

    :cond_4
    if-nez p1, :cond_6

    .line 837
    invoke-direct {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e(Z)V

    .line 838
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {p2, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setProgress([I)V

    if-eqz p3, :cond_5

    .line 840
    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Z)V

    .line 842
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(I[I)V

    goto/16 :goto_4

    :cond_6
    const/16 p2, 0xb

    const/4 v0, 0x7

    if-ne p1, p2, :cond_b

    .line 844
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s()V

    const/4 p2, 0x0

    .line 846
    invoke-static {p0, p3, p2}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 847
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 848
    invoke-static {v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    goto :goto_1

    .line 850
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->m()Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 852
    invoke-static {v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object p2

    .line 857
    :cond_8
    :goto_1
    new-array v2, v0, [I

    if-eqz p2, :cond_9

    .line 858
    array-length v4, p2

    if-lt v4, v0, :cond_9

    :goto_2
    if-ge v1, v0, :cond_9

    .line 860
    aget v4, p2, v1

    float-to-int v4, v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 863
    :cond_9
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v0, v2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setProgress([I)V

    if-eqz p3, :cond_a

    .line 866
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Z)V

    .line 867
    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Ljava/lang/String;)V

    .line 869
    :cond_a
    invoke-direct {p0, p1, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(I[I)V

    goto :goto_4

    .line 871
    :cond_b
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s()V

    .line 872
    invoke-static {p3}, Lcom/coloros/partners/dirac/a/d;->b(Z)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    .line 873
    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Ljava/lang/String;)[F

    move-result-object v2

    if-eqz v2, :cond_d

    .line 874
    array-length v4, v2

    if-ne v4, v0, :cond_d

    .line 875
    new-array v4, v0, [I

    :goto_3
    if-ge v1, v0, :cond_c

    .line 877
    aget v5, v2, v1

    float-to-int v5, v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 879
    :cond_c
    invoke-static {v4}, Lcom/coloros/partners/dirac/a/d;->a([I)V

    .line 880
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v0, v4}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setProgress([I)V

    .line 881
    invoke-direct {p0, p1, v4}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(I[I)V

    :cond_d
    if-eqz p3, :cond_e

    .line 884
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Z)V

    .line 885
    invoke-virtual {p0, p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Ljava/lang/String;)V

    .line 889
    :cond_e
    :goto_4
    sget-object p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "updateEqualizer, support="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 892
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method private varargs a(I[I)V
    .locals 4

    .line 602
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkEqualizerIsDefault, index = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 607
    array-length p1, p2

    if-lez p1, :cond_2

    .line 608
    array-length p1, p2

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_2

    aget v3, p2, v0

    if-eqz v3, :cond_1

    move p1, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move p1, v2

    .line 616
    :cond_3
    :goto_2
    sget-object p2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkEqualizerIsDefault, isDefault = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 618
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V
    .locals 1

    .line 9920
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->D:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 9921
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 9923
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->D:Landroid/widget/Toast;

    .line 9924
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->D:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, v0, p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(IZZ)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Lcom/oppo/a/a/a/b$a;Lcom/oppo/a/a/a/b$a;)V
    .locals 3

    .line 12446
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkMusicEqContainer, oldMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; newMode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12448
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 12449
    sget-object p1, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 12453
    :cond_0
    sget-object p1, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    if-ne p2, p1, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 12459
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    if-ne p2, p1, :cond_2

    .line 12460
    invoke-direct {p0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    .line 12461
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result p1

    .line 12463
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k()I

    move-result p2

    invoke-direct {p0, p2, v2, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(IZZ)V

    return-void

    .line 12465
    :cond_2
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Z)V
    .locals 4

    .line 11623
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchOnOff, isOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11624
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_4

    .line 11628
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 11629
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v1

    .line 11630
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    .line 11631
    sget-object p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string p1, "switchOnOff, same as before."

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 11636
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Z)V

    .line 11637
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->x:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 11639
    :cond_2
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x1

    .line 11640
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Z)V

    :goto_1
    if-nez p1, :cond_3

    .line 11644
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 11645
    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    return-void

    .line 11648
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k()I

    move-result p1

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(IZZ)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;[I)V
    .locals 1

    const/16 v0, 0xb

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(I[I)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    .line 797
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateEqualizer, isHeadset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", force="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 799
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 800
    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelectedItem(I)V

    :cond_0
    return-void

    .line 804
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    if-eqz p1, :cond_2

    .line 806
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelectedItem(I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V
    .locals 3

    .line 11580
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "restoreDefaultEqualizer"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11581
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v0

    .line 11585
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 11588
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    if-eqz v1, :cond_0

    .line 11589
    sget-object v2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f:[I

    invoke-virtual {v1, v2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setProgress([I)V

    .line 11591
    :cond_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->A:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 11592
    sget-object v1, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f:[I

    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c([I)V

    .line 11593
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 11595
    :cond_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 11596
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11597
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Lcom/oppo/a/a/a/b$a;Lcom/oppo/a/a/a/b$a;)V
    .locals 3

    .line 12653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12654
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12655
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f()Z

    move-result v1

    .line 12656
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12655
    :goto_0
    invoke-static {p0, v1, v2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12657
    invoke-static {p1}, Lcom/coloros/partners/dirac/a/d;->a(Lcom/oppo/a/a/a/b$a;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "before_mode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12658
    invoke-static {p2}, Lcom/coloros/partners/dirac/a/d;->a(Lcom/oppo/a/a/a/b$a;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "after_mode"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "switch_mode"

    .line 12660
    invoke-static {p0, p1, v0}, Lcom/coloros/partners/dirac/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(ZZ)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->q()V

    return-void
.end method

.method private d(Z)V
    .locals 4

    .line 736
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableEqualizer, enable="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setIsEnable(Z)V

    .line 739
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 740
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 741
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0601cf

    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k()I

    move-result p1

    if-eqz p1, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s()V

    return-void

    .line 748
    :cond_1
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e(Z)V

    return-void

    .line 751
    :cond_2
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->A:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 752
    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e(Z)V

    .line 753
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {p1, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setIsEnable(Z)V

    .line 754
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V
    .locals 3

    .line 11897
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->getSelectedItemPosition()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 11898
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setSelection(IZ)V

    .line 11906
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 11907
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/16 v0, 0x15

    invoke-virtual {p0, v0, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void

    .line 11909
    :cond_0
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_1
    return-void
.end method

.method private e(Z)V
    .locals 3

    .line 759
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableEqualizerView, manual="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setTouchDisabled(Z)V

    .line 761
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x3e99999a    # 0.3f

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    .line 762
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 763
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setAlpha(F)V

    :cond_0
    if-nez p1, :cond_1

    .line 767
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 768
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0601d0

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/coloros/partners/dirac/activity/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->m:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 9

    const v0, 0x7f0a0268

    .line 324
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0a01fa

    .line 325
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01f8

    .line 326
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a03af

    .line 327
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->l:Landroid/view/View;

    .line 328
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f9

    .line 329
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    const v0, 0x7f0a072f

    .line 330
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0a072c

    .line 331
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0a073b

    .line 332
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0a0744

    .line 333
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->r:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0580

    .line 335
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->A:Landroid/widget/RelativeLayout;

    .line 336
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    new-instance v1, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$6;

    invoke-direct {v1, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$6;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a05b8

    .line 365
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->m:Landroid/widget/ScrollView;

    const v0, 0x7f0a03ad

    .line 366
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->x:Landroid/view/ViewGroup;

    const v0, 0x7f0a023e

    .line 367
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    const v0, 0x7f0a000b

    .line 368
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->n:Lcolor/support/design/widget/ColorAppBarLayout;

    const v0, 0x7f0a0267

    .line 369
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f0a073d

    .line 370
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    .line 371
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f1207cd

    .line 373
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 374
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 376
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070331

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 377
    array-length v5, v0

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    .line 379
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 380
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x11

    .line 382
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    const v8, 0x7f0601cc

    .line 383
    invoke-virtual {p0, v8}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v8, v4

    .line 384
    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 385
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 386
    iget-object v8, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->C:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 6930
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "global_dirac"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6931
    :try_start_1
    sget-object v3, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string v4, " state= "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v2, v0

    .line 6933
    :catch_1
    sget-object v3, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string v4, "initViews, not found setting."

    invoke-static {v3, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6935
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    .line 6936
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6937
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    goto :goto_3

    .line 6941
    :cond_2
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 391
    :goto_3
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->p()V

    const v0, 0x7f0a0277

    .line 7472
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    .line 7473
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    new-instance v2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;

    invoke-direct {v2, p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$8;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    invoke-virtual {v0, v2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7515
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->G:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    invoke-virtual {v0, v2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setEqualizerListener(Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;)V

    const v0, 0x7f0a03f9

    .line 7516
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const v0, 0x7f0a00eb

    .line 7517
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s:Landroid/view/View;

    .line 7518
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v1}, Lcom/coloros/partners/dirac/a/d;->a(Z)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setDTSModeList(Ljava/util/List;)V

    .line 7519
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->t:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->H:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->setOnItemChangeListener(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;)V

    return-void
.end method

.method private p()V
    .locals 8

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    new-instance v1, Lcom/coloros/partners/dirac/activity/b;

    sget-object v2, Lcom/oppo/a/a/a/b$a;->e:Lcom/oppo/a/a/a/b$a;

    const v3, 0x7f1207c6

    .line 398
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1207c7

    .line 399
    invoke-virtual {p0, v4}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/coloros/partners/dirac/activity/b;-><init>(Lcom/oppo/a/a/a/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v1, Lcom/coloros/partners/dirac/activity/b;

    sget-object v2, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    const v3, 0x7f1207c8

    .line 401
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1207c9

    .line 402
    invoke-virtual {p0, v4}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/coloros/partners/dirac/activity/b;-><init>(Lcom/oppo/a/a/a/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v1, Lcom/coloros/partners/dirac/activity/b;

    sget-object v2, Lcom/oppo/a/a/a/b$a;->d:Lcom/oppo/a/a/a/b$a;

    const v3, 0x7f1207c4

    .line 404
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1207c5

    .line 405
    invoke-virtual {p0, v4}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/coloros/partners/dirac/activity/b;-><init>(Lcom/oppo/a/a/a/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Lcom/coloros/partners/dirac/activity/b;

    sget-object v2, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    const v3, 0x7f1207ca

    .line 407
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1207cb

    .line 408
    invoke-virtual {p0, v4}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/coloros/partners/dirac/activity/b;-><init>(Lcom/oppo/a/a/a/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lcom/coloros/partners/dirac/activity/a;

    invoke-direct {v1, p0, v0}, Lcom/coloros/partners/dirac/activity/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    .line 411
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    .line 8093
    iput-object v2, v1, Lcom/coloros/partners/dirac/activity/a;->a:Lcom/oppo/a/a/a/b$a;

    .line 412
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    new-instance v2, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;-><init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsColorListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 432
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 433
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 434
    :goto_0
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    invoke-virtual {v5}, Lcom/coloros/partners/dirac/activity/a;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 435
    iget-object v5, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v5, v3, v6, v7}, Lcom/coloros/partners/dirac/activity/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 436
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 437
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 438
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 439
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/SettingsColorListView;->getDividerHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v4, v1

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->y:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private q()V
    .locals 8

    .line 665
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->u:Z

    if-nez v0, :cond_0

    .line 666
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "updateBtnStatus, not resume"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x66

    .line 674
    iput v3, v0, Landroid/os/Message;->what:I

    const v4, 0x7f1207de

    .line 675
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 676
    iget-object v4, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 678
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h:Landroid/widget/RelativeLayout;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 680
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->i:Landroid/widget/ImageView;

    const v3, 0x7f080518

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 681
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 682
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    :cond_1
    return-void

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->i()Z

    move-result v0

    .line 690
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v3

    .line 691
    sget-object v4, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateBtnStatus, effectEnabled="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mService="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v4, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v4, :cond_8

    .line 694
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->l()Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v5

    .line 696
    iput-object v5, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    .line 697
    iget-object v6, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->z:Lcom/coloros/partners/dirac/activity/a;

    if-eqz v6, :cond_3

    .line 698
    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    .line 9093
    iput-object v7, v6, Lcom/coloros/partners/dirac/activity/a;->a:Lcom/oppo/a/a/a/b$a;

    .line 699
    invoke-virtual {v6}, Lcom/coloros/partners/dirac/activity/a;->notifyDataSetChanged()V

    :cond_3
    if-eqz v0, :cond_6

    .line 702
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v3, :cond_5

    .line 704
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 705
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->w:Lcom/oppo/a/a/a/b$a;

    sget-object v7, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    if-eq v0, v7, :cond_4

    .line 706
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    goto :goto_0

    .line 708
    :cond_4
    invoke-direct {p0, v6}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    goto :goto_0

    .line 711
    :cond_5
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 712
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    goto :goto_0

    .line 715
    :cond_6
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->j:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 717
    invoke-direct {p0, v2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d(Z)V

    .line 720
    :goto_0
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateBtnStatus, effectModeName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", effectSceneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 723
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_1

    .line 726
    :cond_7
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 729
    :goto_1
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 731
    :cond_8
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "updateBtnStatus, mService is null"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static r()Z
    .locals 2

    .line 776
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s()V
    .locals 2

    .line 780
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setTouchDisabled(Z)V

    .line 785
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 786
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->k:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 787
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setAlpha(F)V

    .line 788
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 790
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0601cf

    invoke-virtual {p0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 551
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doOnServiceConnected, name="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-super {p0, p1, p2}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 553
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 554
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    .line 571
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doDiracServiceConnectStatusCallback, status="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-super {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Z)V

    .line 573
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 574
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 575
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final c()V
    .locals 3

    .line 561
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    const-string v1, "doDiracServiceStatusChangeCallback"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->c()V

    .line 563
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 564
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 565
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 947
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onBackPressed()V

    .line 948
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->finish()V

    const v0, 0x7f010062

    const v1, 0x7f010063

    .line 949
    invoke-virtual {p0, v0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1962
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1963
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1964
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v3, "com.coloros.partners.dirac.SevenDiracMainActivity"

    .line 1965
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1967
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->finish()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 277
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2953
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2954
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 2955
    const-class v3, Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2956
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->finish()V

    .line 283
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 284
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;)V

    const p1, 0x7f0d01e7

    .line 285
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->setContentView(I)V

    .line 286
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 287
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 288
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a()V

    .line 291
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o()V

    .line 292
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 293
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "AccessOppoDirac"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoMusic"

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    goto :goto_1

    :cond_2
    const-string v0, "Setting"

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 297
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    :cond_3
    :goto_1
    const p1, 0x7f0a0160

    .line 300
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0804bb

    .line 301
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 302
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v0, 0x7f0a05b8

    .line 303
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 304
    invoke-static {p0, p1, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 305
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    const p1, 0x7f1207db

    .line 307
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->v:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "global_dirac"

    .line 309
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "global_dirac_scene"

    .line 311
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "global_dirac_effect_mode"

    .line 313
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "global_dirac_eq"

    .line 315
    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    sget-object v3, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCommonRecord, mDiracEffectSwitch = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mDiracScene = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mDiracEffectMode = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mDiracEqBands = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 545
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onPause()V

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->u:Z

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 524
    sget-object v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume, mService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-super {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->onResume()V

    .line 526
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    .line 527
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getMaxProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%ddb"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 528
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 529
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->o:Lcom/coloros/partners/dirac/widget/DiracEqualizerView;

    invoke-virtual {v7}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getMinProgress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iput-boolean v1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->u:Z

    .line 534
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b()V

    return-void

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 538
    invoke-direct {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->q()V

    .line 539
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->h()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(ZZ)V

    return-void
.end method

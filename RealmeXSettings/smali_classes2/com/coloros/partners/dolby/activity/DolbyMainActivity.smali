.class public Lcom/coloros/partners/dolby/activity/DolbyMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DolbyMainActivity.java"


# static fields
.field private static final b:[I


# instance fields
.field private A:Z

.field private B:J

.field private C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;

.field private F:Lcom/coloros/partners/dolby/a$a;

.field a:Landroid/os/Handler;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/color/support/widget/ColorSwitch;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/coloros/settings/widget/SettingsColorListView;

.field private l:Landroid/widget/GridView;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RadioButton;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Lcom/coloros/partners/dolby/activity/a;

.field private x:Lcom/coloros/partners/dolby/activity/c;

.field private y:Lcom/coloros/partners/dolby/a;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 88
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
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

    .line 74
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->r:Z

    .line 108
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->s:Z

    .line 109
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->t:Z

    .line 110
    iput v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    .line 119
    new-instance v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$1;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 137
    new-instance v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$2;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->D:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$3;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->E:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;

    .line 203
    new-instance v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$5;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$5;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->F:Lcom/coloros/partners/dolby/a$a;

    return-void
.end method

.method private a()V
    .locals 9

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v1, Lcom/coloros/partners/dolby/activity/b;

    const v2, 0x7f12083b

    .line 336
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12083c

    .line 337
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/coloros/partners/dolby/activity/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lcom/coloros/partners/dolby/activity/b;

    const v2, 0x7f12083d

    .line 339
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12083e

    .line 340
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3}, Lcom/coloros/partners/dolby/activity/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v1, Lcom/coloros/partners/dolby/activity/b;

    const v2, 0x7f120839

    .line 342
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12083a

    .line 343
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3}, Lcom/coloros/partners/dolby/activity/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lcom/coloros/partners/dolby/activity/b;

    const v2, 0x7f12083f

    .line 345
    invoke-virtual {p0, v2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120840

    .line 346
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3}, Lcom/coloros/partners/dolby/activity/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lcom/coloros/partners/dolby/activity/a;

    invoke-direct {v1, p0, v0}, Lcom/coloros/partners/dolby/activity/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    .line 349
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    iget v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    .line 3085
    iput v2, v1, Lcom/coloros/partners/dolby/activity/a;->a:I

    .line 350
    iget-object v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    new-instance v2, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsColorListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 370
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move v2, v4

    move v3, v2

    .line 372
    :goto_0
    iget-object v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    invoke-virtual {v6}, Lcom/coloros/partners/dolby/activity/a;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 373
    iget-object v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v6, v2, v7, v8}, Lcom/coloros/partners/dolby/activity/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 374
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 375
    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 376
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 377
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/SettingsColorListView;->getDividerHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    invoke-virtual {v2}, Lcom/coloros/partners/dolby/activity/a;->getCount()I

    move-result v2

    sub-int/2addr v2, v5

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 635
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkMusicEqContainer, mode :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyMainActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 637
    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 642
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 640
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a03af

    .line 416
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0277

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    .line 418
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->E:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->setEqualizerListener(Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;)V

    const v0, 0x7f0a0569

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    .line 420
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a043c

    .line 421
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->o:Landroid/widget/RadioButton;

    .line 422
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->o:Landroid/widget/RadioButton;

    new-instance v1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;

    invoke-direct {v1, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0267

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->i:Landroid/widget/LinearLayout;

    .line 444
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f120841

    .line 446
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 447
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 449
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070367

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 450
    array-length v4, p1

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    .line 452
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 453
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x11

    .line 455
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const v7, 0x7f0601d8

    .line 456
    invoke-virtual {p0, v7}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v7, v3

    .line 457
    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 458
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 459
    iget-object v7, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 403
    iget-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    if-nez p1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->x:Lcom/coloros/partners/dolby/activity/c;

    invoke-virtual {p1, p3}, Lcom/coloros/partners/dolby/activity/c;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/partners/dolby/activity/d;

    .line 4031
    iget p2, p1, Lcom/coloros/partners/dolby/activity/d;->a:I

    .line 405
    iput p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onItemClick, music ieq change to :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/activity/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DolbyMainActivity"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    iget p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 4330
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "setMusicIeqType, type="

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "DolbyServiceManager"

    invoke-static {p4, p3}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    iget-object p3, p1, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-nez p3, :cond_0

    const-string p1, "setMusicIeqType, mService is null"

    .line 4332
    invoke-static {p4, p1}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4336
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    invoke-interface {p1, p2}, Lcom/oppo/a/b/a/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "setMusicIeqType:"

    .line 4338
    invoke-static {p4, p2, p1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :goto_0
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->x:Lcom/coloros/partners/dolby/activity/c;

    iget p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 5084
    iput p2, p1, Lcom/coloros/partners/dolby/activity/c;->a:I

    .line 409
    invoke-virtual {p1}, Lcom/coloros/partners/dolby/activity/c;->notifyDataSetChanged()V

    .line 410
    iget p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 5758
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 5759
    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "package_name"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5760
    iget p3, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    invoke-static {p0, p3}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "device_name"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5761
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ieq_mode"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5762
    invoke-static {p0, p3, p2}, Lcom/coloros/partners/dolby/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)V
    .locals 8

    .line 7573
    iget-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->r:Z

    const-string v1, "DolbyMainActivity"

    if-nez v0, :cond_0

    const-string p0, "updateContent, not resume"

    .line 7574
    invoke-static {v1, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7577
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "updateContent, service is null"

    .line 7578
    invoke-static {v1, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7581
    :cond_1
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7582
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->e()Z

    move-result v0

    .line 7583
    iget-object v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v2

    .line 7584
    invoke-static {p1}, Lcom/coloros/partners/dolby/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7585
    iput p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    goto :goto_0

    .line 7587
    :cond_2
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->d()I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    .line 7589
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "updateContent, effectEnabled="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mConnectDevice="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    iget p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    const v3, 0x3ecccccd    # 0.4f

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    if-nez v2, :cond_3

    .line 7592
    iput-boolean v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->t:Z

    .line 7593
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v6}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 7595
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v5}, Lcom/coloros/settings/widget/SettingsColorListView;->setVisibility(I)V

    .line 7596
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_3

    :cond_4
    const/4 v7, 0x4

    if-eq p1, v7, :cond_7

    const/4 v7, 0x2

    if-ne p1, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    if-eqz v2, :cond_6

    .line 7607
    iput-boolean v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->t:Z

    .line 7608
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v5}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 7610
    :cond_6
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v4}, Lcom/coloros/settings/widget/SettingsColorListView;->setVisibility(I)V

    .line 7611
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_3

    :cond_7
    :goto_1
    if-eq v2, v0, :cond_8

    .line 7600
    iput-boolean v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->t:Z

    .line 7601
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 7603
    :cond_8
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    if-eqz v0, :cond_9

    move v0, v5

    goto :goto_2

    :cond_9
    move v0, v4

    :goto_2
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setVisibility(I)V

    .line 7604
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 7613
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7615
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->f()I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    .line 7616
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    .line 8085
    iput v0, p1, Lcom/coloros/partners/dolby/activity/a;->a:I

    .line 7617
    invoke-virtual {p1}, Lcom/coloros/partners/dolby/activity/a;->notifyDataSetChanged()V

    .line 7619
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->g()I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 7620
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->x:Lcom/coloros/partners/dolby/activity/c;

    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 9084
    iput v0, p1, Lcom/coloros/partners/dolby/activity/c;->a:I

    .line 7621
    invoke-virtual {p1}, Lcom/coloros/partners/dolby/activity/c;->notifyDataSetChanged()V

    .line 7622
    iget p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(I)V

    .line 7623
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->h()[I

    move-result-object p1

    .line 7624
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->setProgress([I)V

    .line 7625
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a([I)V

    .line 7626
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    .line 7627
    iget-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    xor-int/2addr p1, v6

    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Z)V

    .line 7628
    iget-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(Z)V

    .line 7630
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateContent, mMusicGeqEnabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", effectMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    invoke-direct {p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", music ieq:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;II)V
    .locals 3

    .line 9741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9742
    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9743
    iget v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    invoke-static {p0, v1}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9744
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "before_mode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9745
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "after_mode"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9746
    invoke-static {p0}, Lcom/coloros/partners/dolby/a;->a(Landroid/content/Context;)Lcom/coloros/partners/dolby/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->j()Ljava/lang/String;

    move-result-object p1

    .line 9747
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "dolby_state"

    .line 9748
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9750
    :cond_0
    invoke-static {p0}, Lcom/coloros/partners/dolby/a;->a(Landroid/content/Context;)Lcom/coloros/partners/dolby/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/partners/dolby/a;->k()Ljava/lang/String;

    move-result-object p1

    .line 9751
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "dolby_profile"

    .line 9752
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "switch_mode"

    .line 9754
    invoke-static {p0, p1, v0}, Lcom/coloros/partners/dolby/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V
    .locals 4

    .line 7545
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    const-string v1, "DolbyMainActivity"

    if-nez v0, :cond_0

    .line 7546
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "switchOnOff, isOn= "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mService is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7550
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->d()I

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    .line 7551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "switchOnOff, isOn="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mConnectDevice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 7552
    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_2

    .line 7558
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 7560
    :cond_2
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/SettingsColorListView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    if-eqz p1, :cond_4

    .line 7563
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 7565
    :cond_4
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setVisibility(I)V

    goto :goto_2

    .line 7554
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dolby/a;->a(Z)V

    .line 7555
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    if-eqz p1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setVisibility(I)V

    .line 7567
    :cond_7
    :goto_2
    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    invoke-direct {p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(I)V

    .line 7568
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_9

    const-string p1, "1"

    goto :goto_4

    :cond_9
    const-string p1, "0"

    .line 7569
    :goto_4
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;ZI)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(ZI)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;[I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a([I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 732
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 733
    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    invoke-static {p0, v1}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "switch_state"

    .line 735
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    const-string v1, "0"

    .line 736
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "open_intent"

    .line 737
    invoke-static {p0, p1, v0}, Lcom/coloros/partners/dolby/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 648
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateMusicIeqView, enabled :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyMainActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->m:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3ecccccd    # 0.4f

    .line 653
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->l:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAlpha(F)V

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private a(ZI)V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 535
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 536
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 538
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 540
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private varargs a([I)V
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 682
    array-length v2, p1

    if-lez v2, :cond_1

    .line 683
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 690
    :goto_1
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    iget p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-wide v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->B:J

    sub-long v6, v0, v6

    cmp-long p1, v6, v2

    if-lez p1, :cond_0

    .line 304
    iput-wide v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->B:J

    const p1, 0x7f12084c

    .line 305
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v5, p1, :cond_1

    const-string p1, "0"

    .line 307
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5

    .line 313
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    iget-wide v6, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->B:J

    sub-long v6, v0, v6

    cmp-long p1, v6, v2

    if-lez p1, :cond_3

    .line 315
    iput-wide v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->B:J

    const p1, 0x7f12084e

    .line 316
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 317
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v5, p1, :cond_4

    const-string p1, "1"

    .line 318
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v5

    :cond_5
    return v4
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->t:Z

    return p0
.end method

.method static synthetic b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f120839

    .line 720
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f12083d

    .line 717
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f12083f

    .line 723
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const p1, 0x7f12083b

    .line 714
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b(Z)V
    .locals 3

    .line 662
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateMusicGeqView, enabled :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyMainActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->o:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    .line 667
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    if-eqz v1, :cond_2

    xor-int/lit8 v2, p1, 0x1

    .line 668
    invoke-virtual {v1, v2}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->setTouchDisabled(Z)V

    .line 670
    :cond_2
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 671
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 673
    :cond_3
    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 674
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 675
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V
    .locals 2

    .line 6695
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    if-eqz v0, :cond_0

    .line 6696
    sget-object v1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b:[I

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->setProgress([I)V

    .line 6698
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6699
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    sget-object v1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b:[I

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/a;->a([I)V

    .line 6701
    :cond_1
    iget-object p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 6702
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(Z)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->z:Z

    return v0
.end method

.method static synthetic g(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->u:I

    return p0
.end method

.method static synthetic i(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/activity/a;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->w:Lcom/coloros/partners/dolby/activity/a;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->A:Z

    return p0
.end method

.method public static synthetic lambda$NHdYW6JAdlfprbunSgI-488hNv4(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic lambda$WPXp1ElHcncQdx_o4rvDKhZ3W0Y(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 292
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 481
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 482
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->finish()V

    const v0, 0x7f010062

    const v1, 0x7f010063

    .line 483
    invoke-virtual {p0, v0, v1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 221
    const-class v2, Lcom/coloros/partners/dolby/DolbyTileService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->finish()V

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->finish()V

    .line 229
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0164

    .line 230
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->setContentView(I)V

    const/4 p1, 0x1

    .line 231
    invoke-static {p1}, Lcom/coloros/partners/dolby/a/b;->a(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 233
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 234
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 236
    invoke-static {}, Lcom/coloros/partners/dolby/a/b;->b()I

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 237
    invoke-static {p0}, Lcom/coloros/partners/dolby/a;->a(Landroid/content/Context;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    .line 238
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    iget-object v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->F:Lcom/coloros/partners/dolby/a$a;

    invoke-virtual {v0, v2}, Lcom/coloros/partners/dolby/a;->a(Lcom/coloros/partners/dolby/a$a;)V

    .line 239
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->b()V

    const v0, 0x7f0a0162

    .line 241
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0804bb

    .line 242
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 243
    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v1, 0x7f0a03c9

    .line 244
    invoke-virtual {p0, v1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 245
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 246
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 247
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 249
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a020e

    .line 250
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f0a021b

    .line 1296
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a021a

    .line 1297
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    .line 1298
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1299
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e:Lcom/color/support/widget/ColorSwitch;

    new-instance v0, Lcom/coloros/partners/dolby/activity/-$$Lambda$DolbyMainActivity$WPXp1ElHcncQdx_o4rvDKhZ3W0Y;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/-$$Lambda$DolbyMainActivity$WPXp1ElHcncQdx_o4rvDKhZ3W0Y;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0217

    .line 1324
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->f:Landroid/widget/TextView;

    const p1, 0x7f0a023e

    .line 1325
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->k:Lcom/coloros/settings/widget/SettingsColorListView;

    const p1, 0x7f0a0219

    .line 1326
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    .line 1328
    invoke-direct {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a()V

    .line 1329
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a043f

    .line 1384
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->m:Landroid/widget/RadioButton;

    .line 1385
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->m:Landroid/widget/RadioButton;

    new-instance v1, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;

    invoke-direct {v1, p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$7;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0440

    .line 1397
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0a043e

    .line 1398
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->l:Landroid/widget/GridView;

    .line 1399
    new-instance p1, Lcom/coloros/partners/dolby/activity/c;

    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/coloros/partners/dolby/activity/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->x:Lcom/coloros/partners/dolby/activity/c;

    .line 1400
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->x:Lcom/coloros/partners/dolby/activity/c;

    iget v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->v:I

    .line 2084
    iput v0, p1, Lcom/coloros/partners/dolby/activity/c;->a:I

    .line 1401
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1402
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->l:Landroid/widget/GridView;

    new-instance v0, Lcom/coloros/partners/dolby/activity/-$$Lambda$DolbyMainActivity$NHdYW6JAdlfprbunSgI-488hNv4;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/activity/-$$Lambda$DolbyMainActivity$NHdYW6JAdlfprbunSgI-488hNv4;-><init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1330
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->j:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Landroid/view/View;)V

    const p1, 0x7f12084a

    .line 258
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->setTitle(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 506
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "DolbyMainActivity"

    const-string v1, "onDestroy"

    .line 507
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 508
    invoke-static {v0}, Lcom/coloros/partners/dolby/a/b;->a(Z)V

    .line 509
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->s:Z

    .line 510
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->F:Lcom/coloros/partners/dolby/a$a;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/a;->b(Lcom/coloros/partners/dolby/a$a;)V

    .line 511
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->c()V

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 466
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 476
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->finish()V

    const p1, 0x7f010062

    const v0, 0x7f010063

    .line 470
    invoke-virtual {p0, p1, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 7

    .line 499
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->r:Z

    .line 3766
    iget-boolean v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->z:Z

    if-eqz v1, :cond_1

    .line 3769
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->z:Z

    .line 3770
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3771
    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    iget v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->q:I

    invoke-static {p0, v2}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3773
    iget-object v2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    if-eqz v2, :cond_0

    .line 3774
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3775
    iget-object v3, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g:Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;

    invoke-virtual {v3}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerView;->getAllProgress()[I

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 3777
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_0

    .line 3779
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 3782
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "geq_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget v6, v3, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "geq_mode"

    .line 3786
    invoke-static {p0, v0, v1}, Lcom/coloros/partners/dolby/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "DolbyMainActivity"

    const-string v1, "onResume"

    .line 488
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->r:Z

    .line 491
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, v0, v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(ZI)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 517
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged has Focus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResume ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLossFocusWhenResume ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyMainActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 521
    iget-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->s:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 522
    iput-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->s:Z

    .line 523
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->y:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->b()V

    .line 526
    :cond_0
    invoke-direct {p0, p1, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(ZI)V

    return-void

    .line 529
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->r:Z

    iput-boolean p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->s:Z

    :cond_2
    return-void
.end method

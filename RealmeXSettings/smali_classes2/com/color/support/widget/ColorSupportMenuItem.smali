.class public Lcom/color/support/widget/ColorSupportMenuItem;
.super Ljava/lang/Object;
.source "ColorSupportMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSupportMenuItem$Builder;,
        Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final ITEM_EIGHTH:I = 0x7

.field public static final ITEM_FIFTH:I = 0x4

.field public static final ITEM_FIRST:I = 0x0

.field public static final ITEM_FOURTH:I = 0x3

.field public static final ITEM_NINTH:I = 0x8

.field public static final ITEM_SECOND:I = 0x1

.field public static final ITEM_SEVENTH:I = 0x6

.field public static final ITEM_SIXTH:I = 0x5

.field public static final ITEM_TENTH:I = 0x9

.field public static final ITEM_THIRD:I = 0x2


# instance fields
.field private mBackgroud:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mOnItemClickListener:Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

.field private mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorSupportMenuItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/color/support/widget/ColorSupportMenuItem;Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;)Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mOnItemClickListener:Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    return-object p1
.end method


# virtual methods
.method public getBackgroud()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mOnItemClickListener:Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroud(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnItemClickListener(Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mOnItemClickListener:Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuItem;->mText:Ljava/lang/String;

    return-void
.end method

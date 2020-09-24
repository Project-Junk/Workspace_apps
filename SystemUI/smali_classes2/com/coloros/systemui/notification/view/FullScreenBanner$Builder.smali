.class public Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/view/FullScreenBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBtnMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClonedApp:Z

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mSendListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

.field private mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mBtnMap:Ljava/util/LinkedHashMap;

    .line 162
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mClonedApp:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mBtnMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mSendListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)Landroid/content/Context;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/coloros/systemui/notification/view/FullScreenBanner;
    .locals 2

    .line 214
    new-instance v0, Lcom/coloros/systemui/notification/view/FullScreenBanner;

    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;-><init>(Landroid/content/Context;)V

    .line 215
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$500(Lcom/coloros/systemui/notification/view/FullScreenBanner;Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mClonedApp:Z

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$600(Lcom/coloros/systemui/notification/view/FullScreenBanner;Z)V

    .line 217
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$700(Lcom/coloros/systemui/notification/view/FullScreenBanner;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$800(Lcom/coloros/systemui/notification/view/FullScreenBanner;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$900(Lcom/coloros/systemui/notification/view/FullScreenBanner;Ljava/util/LinkedHashMap;)V

    .line 220
    iget-object v1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$1000(Lcom/coloros/systemui/notification/view/FullScreenBanner;Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)V

    .line 221
    iget-object p0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mSendListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    invoke-static {v0, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->access$1100(Lcom/coloros/systemui/notification/view/FullScreenBanner;Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)V

    return-object v0
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 1

    .line 192
    new-instance v0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;

    invoke-direct {v0, p0, p2}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder$1;-><init>(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object p2, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iput-object p3, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mSendListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;

    return-object p0
.end method

.method public setCloned(Z)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mClonedApp:Z

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setTouchListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->mTouchListener:Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;

    return-object p0
.end method

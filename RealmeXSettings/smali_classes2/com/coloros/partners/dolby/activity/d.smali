.class public final Lcom/coloros/partners/dolby/activity/d;
.super Ljava/lang/Object;
.source "DolbyMusicIeqItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dolby/activity/d$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Lcom/coloros/partners/dolby/activity/d$a;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iget v0, p1, Lcom/coloros/partners/dolby/activity/d$a;->a:I

    .line 25
    iput v0, p0, Lcom/coloros/partners/dolby/activity/d;->a:I

    .line 2051
    iget-object v0, p1, Lcom/coloros/partners/dolby/activity/d$a;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/coloros/partners/dolby/activity/d;->b:Ljava/lang/String;

    .line 3051
    iget-object p1, p1, Lcom/coloros/partners/dolby/activity/d$a;->c:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/d;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/partners/dolby/activity/d$a;B)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/activity/d;-><init>(Lcom/coloros/partners/dolby/activity/d$a;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DolbyMusicIeqItem{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/partners/dolby/activity/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/partners/dolby/activity/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

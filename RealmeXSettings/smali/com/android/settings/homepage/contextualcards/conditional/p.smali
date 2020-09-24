.class public final Lcom/android/settings/homepage/contextualcards/conditional/p;
.super Lcom/android/settings/homepage/contextualcards/conditional/a;
.source "RingerMutedConditionController.java"


# static fields
.field static final b:I


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RingerMutedConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/p;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/a;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    .line 40
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/p;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 50
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/p;->b:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x558

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 52
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    const v2, 0x7f1205d5

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    const v3, 0x7f1205d7

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    .line 57
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    const v2, 0x7f1205d6

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/p;->c:Landroid/content/Context;

    const v2, 0x7f0807d7

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 1390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 62
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method

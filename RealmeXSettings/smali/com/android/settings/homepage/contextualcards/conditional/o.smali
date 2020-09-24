.class public final Lcom/android/settings/homepage/contextualcards/conditional/o;
.super Ljava/lang/Object;
.source "NightDisplayConditionController.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# static fields
.field static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final d:Landroid/hardware/display/ColorDisplayManager;

.field private final e:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "NightDisplayConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/o;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 44
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->d:Landroid/hardware/display/ColorDisplayManager;

    .line 45
    new-instance p2, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p2, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->e:Landroid/hardware/display/NightDisplayListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->d:Landroid/hardware/display/ColorDisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/android/settings/core/f;

    invoke-direct {v0, p1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/display/NightDisplaySettings;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x5de

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f120e6a

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->e:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->e:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 50
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/o;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->d:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 74
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/o;->a:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x1ec

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 76
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    const v2, 0x7f1205e2

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    const v3, 0x7f1205e0

    .line 79
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    .line 80
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    const v2, 0x7f1205df

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->b:Landroid/content/Context;

    const v2, 0x7f080834

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 1390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 86
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method

.method public final onActivated(Z)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/o;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    return-void
.end method

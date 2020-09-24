.class public final Lcom/android/settings/homepage/contextualcards/conditional/c;
.super Ljava/lang/Object;
.source "BackgroundDataConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# static fields
.field static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final d:Landroid/net/NetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "BackgroundDataConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    const-string p2, "netpolicy"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->d:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->d:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 2

    .line 46
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/c;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->d:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 67
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/c;->a:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x17a

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 69
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    const v2, 0x7f1205e2

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    const v3, 0x7f1205d2

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    .line 73
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    const v2, 0x7f1205d1

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/c;->b:Landroid/content/Context;

    const v2, 0x7f0806c9

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 1390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 77
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;->a:Ljava/lang/ref/WeakReference;

    .line 211
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "onAnimationEnd: addMsgLayoutAnim end."

    const-string v0, "MessageEntryPreference"

    .line 221
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 223
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1231
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1232
    iput-boolean p1, v2, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a:Z

    if-eqz v1, :cond_0

    .line 1234
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 1235
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1236
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "MessageEntryPreference"

    const-string v0, "onAnimationEnd: addMsgLayoutAnim start."

    .line 216
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

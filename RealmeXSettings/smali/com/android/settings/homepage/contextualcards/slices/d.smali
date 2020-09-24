.class final Lcom/android/settings/homepage/contextualcards/slices/d;
.super Ljava/lang/Object;
.source "SliceFullCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/d;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic a(Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/d$a;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    .line 59
    iget p5, p4, Landroidx/slice/widget/EventInfo;->rowIndex:I

    iget p4, p4, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 60
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/slices/d$a;->getAdapterPosition()I

    move-result p2

    .line 59
    invoke-static {p1, p5, p4, p2}, Lcom/android/settings/homepage/contextualcards/a/a;->a(Lcom/android/settings/homepage/contextualcards/b;III)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/d;->a:Landroid/content/Context;

    .line 63
    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    .line 65
    iget-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/d;->a:Landroid/content/Context;

    const/16 p5, 0x682

    invoke-virtual {p2, p4, p5, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/d;->a:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/d;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/settings/overlay/b;->getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/d;

    move-result-object p1

    .line 72
    invoke-interface {p1, p3}, Lcom/android/settings/homepage/contextualcards/d;->a(Landroidx/slice/Slice;)V

    return-void
.end method

.method public static synthetic lambda$o_50C4UDUPvY7Lq2oXksUxhYRFU(Lcom/android/settings/homepage/contextualcards/slices/d;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/d$a;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/homepage/contextualcards/slices/d;->a(Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/d$a;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroidx/slice/Slice;)V
    .locals 2

    .line 50
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;

    .line 51
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    .line 52
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    .line 1094
    iget-object v1, p2, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setMode(I)V

    .line 55
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, p3}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    .line 57
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;-><init>(Lcom/android/settings/homepage/contextualcards/slices/d;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/d$a;Landroidx/slice/Slice;)V

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 76
    iget-object p3, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 1150
    iget-boolean p2, p2, Lcom/android/settings/homepage/contextualcards/b;->g:Z

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    .line 79
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    :cond_0
    return-void
.end method

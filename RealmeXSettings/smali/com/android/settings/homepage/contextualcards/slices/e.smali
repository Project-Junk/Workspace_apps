.class final Lcom/android/settings/homepage/contextualcards/slices/e;
.super Ljava/lang/Object;
.source "SliceHalfCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/e;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic a(Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/e$a;Landroid/view/View;)V
    .locals 1

    .line 64
    :try_start_0
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Failed to start intent "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "SliceHCRendererHelper"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    const/4 p4, 0x3

    .line 69
    invoke-virtual {p3}, Lcom/android/settings/homepage/contextualcards/slices/e$a;->getAdapterPosition()I

    move-result p3

    .line 68
    invoke-static {p2, p1, p4, p3}, Lcom/android/settings/homepage/contextualcards/a/a;->a(Lcom/android/settings/homepage/contextualcards/b;III)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/e;->a:Landroid/content/Context;

    .line 72
    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    .line 74
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/e;->a:Landroid/content/Context;

    const/16 p4, 0x682

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$ucMnVJc-MjM_8Qa7mdTqYGVBaBE(Lcom/android/settings/homepage/contextualcards/slices/e;Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/e$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/homepage/contextualcards/slices/e;->a(Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/e$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroidx/slice/Slice;)V
    .locals 3

    .line 57
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/e$a;

    .line 58
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/e;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p3

    .line 59
    invoke-virtual {p3}, Landroidx/slice/SliceMetadata;->getPrimaryAction()Landroidx/slice/core/SliceAction;

    move-result-object p3

    .line 60
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/e$a;->b:Landroid/widget/ImageView;

    invoke-interface {p3}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/e$a;->c:Landroid/widget/TextView;

    invoke-interface {p3}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/e$a;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$e$ucMnVJc-MjM_8Qa7mdTqYGVBaBE;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$e$ucMnVJc-MjM_8Qa7mdTqYGVBaBE;-><init>(Lcom/android/settings/homepage/contextualcards/slices/e;Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/e$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

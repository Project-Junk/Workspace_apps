.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/d;

.field private final synthetic f$1:Lcom/android/settings/homepage/contextualcards/b;

.field private final synthetic f$2:Lcom/android/settings/homepage/contextualcards/slices/d$a;

.field private final synthetic f$3:Landroidx/slice/Slice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/d;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/d$a;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$0:Lcom/android/settings/homepage/contextualcards/slices/d;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$1:Lcom/android/settings/homepage/contextualcards/b;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$2:Lcom/android/settings/homepage/contextualcards/slices/d$a;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$3:Landroidx/slice/Slice;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$0:Lcom/android/settings/homepage/contextualcards/slices/d;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$1:Lcom/android/settings/homepage/contextualcards/b;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$2:Lcom/android/settings/homepage/contextualcards/slices/d$a;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$d$o_50C4UDUPvY7Lq2oXksUxhYRFU;->f$3:Landroidx/slice/Slice;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/homepage/contextualcards/slices/d;->lambda$o_50C4UDUPvY7Lq2oXksUxhYRFU(Lcom/android/settings/homepage/contextualcards/slices/d;Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/slices/d$a;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method

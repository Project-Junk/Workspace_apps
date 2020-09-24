.class public Lcom/android/settings/localepicker/LocaleLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "LocaleLinearLayoutManager.java"


# instance fields
.field private final a:Lcom/android/settings/localepicker/a;

.field private final b:Landroid/content/Context;

.field private final c:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final d:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final e:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final f:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final g:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/localepicker/a;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    .line 58
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->b:Landroid/content/Context;

    const v0, 0x7f1200d8

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0049

    invoke-direct {p1, v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->c:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 61
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->b:Landroid/content/Context;

    const v0, 0x7f1200d6

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0047

    invoke-direct {p1, v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->d:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 64
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->b:Landroid/content/Context;

    const v0, 0x7f1200d7

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0048

    invoke-direct {p1, v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->e:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 67
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->b:Landroid/content/Context;

    const v0, 0x7f1200d5

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0046

    invoke-direct {p1, v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->f:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 70
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->b:Landroid/content/Context;

    const v0, 0x7f1200d9

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a004a

    invoke-direct {p1, v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->g:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result p1

    .line 82
    invoke-virtual {p0, p3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    .line 83
    check-cast p3, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget-object p3, p3, Lcom/android/settings/localepicker/LocaleDragCell;->b:Landroid/widget/CheckBox;

    .line 89
    invoke-virtual {p3}, Landroid/widget/CheckBox;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 90
    invoke-virtual {p4, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    .line 1218
    iget-boolean p3, p3, Lcom/android/settings/localepicker/a;->d:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->c:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 101
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->e:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    if-ge v1, p1, :cond_2

    .line 104
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->d:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 105
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->f:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_2
    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    .line 108
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->g:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3
    return-void
.end method

.method public performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result v0

    .line 117
    invoke-virtual {p0, p3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p4, :pswitch_data_0

    .line 152
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityActionForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_0
    if-le v0, v3, :cond_1

    .line 147
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    .line 1222
    iget-object p2, p1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v3, :cond_2

    if-ltz v1, :cond_2

    if-lt v1, p2, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    iget-object p2, p1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1230
    invoke-virtual {p1}, Lcom/android/settings/localepicker/a;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    if-lez v1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    add-int/lit8 p2, v1, -0x1

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/localepicker/a;->a(II)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/localepicker/a;->a(II)V

    goto :goto_0

    :pswitch_3
    add-int/lit8 p1, v1, 0x1

    if-ge p1, v0, :cond_1

    .line 129
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    invoke-virtual {p2, v1, p1}, Lcom/android/settings/localepicker/a;->a(II)V

    goto :goto_0

    :pswitch_4
    sub-int/2addr v0, v3

    if-eq v1, v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/localepicker/a;->a(II)V

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 156
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->a:Lcom/android/settings/localepicker/a;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/a;->b()V

    :cond_3
    return v3

    :pswitch_data_0
    .packed-switch 0x7f0a0046
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

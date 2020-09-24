.class public Lcom/android/setupwizardlib/items/ButtonBarItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonBarItem.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/d$a;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/setupwizardlib/items/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->b:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1083
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 6

    .line 95
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ButtonItem;

    .line 2127
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    if-nez v3, :cond_1

    .line 2128
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2129
    iget v4, v2, Lcom/android/setupwizardlib/items/ButtonItem;->d:I

    if-eqz v4, :cond_0

    .line 2130
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget v5, v2, Lcom/android/setupwizardlib/items/ButtonItem;->d:I

    invoke-direct {v4, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v3, v4

    .line 2132
    :cond_0
    invoke-static {v3}, Lcom/android/setupwizardlib/items/ButtonItem;->a(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    .line 2133
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2135
    :cond_1
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2138
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2141
    :cond_2
    :goto_1
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    iget-boolean v4, v2, Lcom/android/setupwizardlib/items/ButtonItem;->b:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2142
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    iget-object v4, v2, Lcom/android/setupwizardlib/items/ButtonItem;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    iget-object v3, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/android/setupwizardlib/items/ButtonItem;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 2144
    iget-object v2, v2, Lcom/android/setupwizardlib/items/ButtonItem;->e:Landroid/widget/Button;

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 4056
    :cond_3
    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public final a(Lcom/android/setupwizardlib/items/c;)V
    .locals 1

    .line 108
    instance-of v0, p1, Lcom/android/setupwizardlib/items/ButtonItem;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/setupwizardlib/items/ButtonItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot add non-button item to Button Bar"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .locals 1

    .line 2056
    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 75
    sget v0, Lcom/android/setupwizardlib/b$e;->suw_items_button_bar:I

    return v0
.end method

.class public Lcom/coloros/settings/feature/language/localepicker/b;
.super Lcom/coloros/settings/feature/language/localepicker/a;
.source "LocaleInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/feature/language/localepicker/a<",
        "Lcom/android/sdk/LocalePicker$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/language/localepicker/a;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 1040
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/b;->b:Ljava/util/Locale;

    .line 1041
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/b;->d:Landroid/content/Context;

    const/4 p1, 0x1

    .line 1042
    iput-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/b;->c:Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 5047
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5048
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/language/localepicker/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sdk/LocalePicker$a;

    .line 5049
    iget-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/b;->b:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/b;->b:Ljava/util/Locale;

    .line 5081
    iget-object v3, v1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 5049
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/sdk/LocalePicker$a;

    const p3, 0x1020006

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p3, 0x1020010

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 1081
    iget-object v1, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 69
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 2081
    iget-object v2, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 70
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TW"

    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f120813

    const-string v5, "zh"

    if-eqz v3, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const-string v3, "HK"

    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v3, "CN"

    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v1, 0x7f120810

    .line 76
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v3, p0, Lcom/coloros/settings/feature/language/localepicker/b;->d:Landroid/content/Context;

    .line 80
    invoke-static {v3, v1, v2}, Lcom/coloros/settings/utils/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3081
    :cond_4
    iget-object v1, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 84
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    const p3, 0x7f0a0541

    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    if-eqz p3, :cond_8

    .line 92
    iget-boolean v1, p0, Lcom/coloros/settings/feature/language/localepicker/b;->c:Z

    if-eqz v1, :cond_7

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/b;->b:Ljava/util/Locale;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/b;->b:Ljava/util/Locale;

    .line 4081
    iget-object p1, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 94
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 96
    :cond_7
    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    :cond_8
    :goto_2
    return-object p2
.end method

.class public final Lcom/android/settingslib/widget/c;
.super Ljava/lang/Object;
.source "AppEntitiesHeaderController.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/Button;

.field public final d:[Lcom/android/settingslib/widget/d;

.field public final e:[Landroid/view/View;

.field public final f:[Landroid/widget/ImageView;

.field public final g:[Landroid/widget/TextView;

.field public final h:[Landroid/widget/TextView;

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/view/View;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/settingslib/widget/c;->a:Landroid/content/Context;

    .line 109
    sget p1, Lcom/android/settingslib/widget/h$d;->header_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/c;->b:Landroid/widget/TextView;

    .line 110
    sget p1, Lcom/android/settingslib/widget/h$d;->header_details:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settingslib/widget/c;->c:Landroid/widget/Button;

    .line 111
    sget p1, Lcom/android/settingslib/widget/h$d;->empty_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/c;->m:Landroid/widget/TextView;

    .line 112
    sget p1, Lcom/android/settingslib/widget/h$d;->app_views_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/c;->n:Landroid/view/View;

    const/4 p1, 0x3

    .line 114
    new-array v0, p1, [Lcom/android/settingslib/widget/d;

    iput-object v0, p0, Lcom/android/settingslib/widget/c;->d:[Lcom/android/settingslib/widget/d;

    .line 115
    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/c;->f:[Landroid/widget/ImageView;

    .line 116
    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/c;->g:[Landroid/widget/TextView;

    .line 117
    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/c;->h:[Landroid/widget/TextView;

    .line 119
    new-array v0, p1, [Landroid/view/View;

    sget v1, Lcom/android/settingslib/widget/h$d;->app1_view:I

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/h$d;->app2_view:I

    .line 121
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Lcom/android/settingslib/widget/h$d;->app3_view:I

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/android/settingslib/widget/c;->e:[Landroid/view/View;

    :goto_0
    if-ge v2, p1, :cond_0

    .line 128
    iget-object p2, p0, Lcom/android/settingslib/widget/c;->e:[Landroid/view/View;

    aget-object p2, p2, v2

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/widget/c;->f:[Landroid/widget/ImageView;

    sget v1, Lcom/android/settingslib/widget/h$d;->app_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/widget/c;->g:[Landroid/widget/TextView;

    sget v1, Lcom/android/settingslib/widget/h$d;->app_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/widget/c;->h:[Landroid/widget/TextView;

    sget v1, Lcom/android/settingslib/widget/h$d;->app_summary:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    aput-object p2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 280
    iget v0, p0, Lcom/android/settingslib/widget/c;->o:I

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settingslib/widget/c;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/c;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/android/settingslib/widget/c;->c:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/settingslib/widget/c;->n:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

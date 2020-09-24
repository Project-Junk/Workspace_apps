.class public Lcom/android/settings/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$d;,
        Lcom/android/settings/UsageStatsActivity$b;,
        Lcom/android/settings/UsageStatsActivity$e;,
        Lcom/android/settings/UsageStatsActivity$c;,
        Lcom/android/settings/UsageStatsActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/usage/UsageStatsManager;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/android/settings/UsageStatsActivity$d;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->a:Landroid/app/usage/UsageStatsManager;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->d:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->b:Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0384

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageStatsActivity;->setContentView(I)V

    const-string/jumbo p1, "usagestats"

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity;->a:Landroid/app/usage/UsageStatsManager;

    const-string p1, "layout_inflater"

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity;->b:Landroid/view/LayoutInflater;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity;->d:Landroid/content/pm/PackageManager;

    const p1, 0x7f0a074e

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 239
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0a04e3

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 242
    new-instance v0, Lcom/android/settings/UsageStatsActivity$d;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageStatsActivity$d;-><init>(Lcom/android/settings/UsageStatsActivity;)V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->c:Lcom/android/settings/UsageStatsActivity$d;

    .line 243
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->c:Lcom/android/settings/UsageStatsActivity$d;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 248
    iget-object p1, p0, Lcom/android/settings/UsageStatsActivity;->c:Lcom/android/settings/UsageStatsActivity$d;

    .line 1206
    iget p2, p1, Lcom/android/settings/UsageStatsActivity$d;->a:I

    if-eq p2, p3, :cond_0

    .line 1210
    iput p3, p1, Lcom/android/settings/UsageStatsActivity$d;->a:I

    .line 1211
    invoke-virtual {p1}, Lcom/android/settings/UsageStatsActivity$d;->a()V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.class public Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;
.super Lcom/android/settingslib/widget/ActionButtonsPreference;
.source "ColorStorageActionButtonsPreference.java"


# instance fields
.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/ActionButtonsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/ActionButtonsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/widget/ActionButtonsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-object p0
.end method

.method public final a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 0

    return-object p0
.end method

.method public final b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p0
.end method

.method public final c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-object p0
.end method

.method public final d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 0

    return-object p0
.end method

.method public final d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p0
.end method

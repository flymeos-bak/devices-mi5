.class public Lcom/android/vendorsettings/applications/RunningServiceDetails;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field Hx:Lcom/android/vendorsettings/applications/RunningState;

.field MT:Landroid/app/ActivityManager;

.field NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

.field NH:Landroid/view/ViewGroup;

.field NI:Landroid/view/ViewGroup;

.field NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

.field NK:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

.field NL:I

.field NM:I

.field NN:Landroid/widget/TextView;

.field NO:Landroid/widget/TextView;

.field final NP:Ljava/util/ArrayList;

.field Nh:Z

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mProcessName:Ljava/lang/String;

.field mRootView:Landroid/view/View;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 593
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->d(Landroid/content/ComponentName;)V

    return-void
.end method

.method private d(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/vendorsettings/applications/RunningServiceDetails$MyAlertDialogFragment;->a(ILandroid/content/ComponentName;)Lcom/android/vendorsettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 580
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const-string v1, "RunningServicesDetails"

    const-string v2, "Failed to show confirm stop dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/vendorsettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method


# virtual methods
.method a(Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    if-eqz p1, :cond_1

    .line 411
    if-eqz p2, :cond_0

    move v1, v2

    .line 412
    :goto_0
    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 413
    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningState$ServiceItem;Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V

    .line 412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 417
    :cond_0
    if-eqz p3, :cond_1

    .line 418
    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 424
    const/4 v1, 0x0

    iget v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v0, v4, :cond_2

    iget v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    const/16 v4, 0x3e7

    if-eq v0, v4, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningState$ServiceItem;Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V

    .line 440
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 424
    goto :goto_1

    .line 428
    :cond_3
    const/4 v0, -0x1

    move v1, v0

    :goto_2
    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 429
    if-gez v1, :cond_4

    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    move-object v4, v0

    .line 431
    :goto_3
    if-eqz v4, :cond_5

    iget v0, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v0, :cond_5

    .line 428
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 429
    :cond_4
    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    move-object v4, v0

    goto :goto_3

    .line 435
    :cond_5
    if-gez v1, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {p0, v4, v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5
.end method

.method a(Lcom/android/vendorsettings/applications/RunningState$ProcessItem;Z)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->lu()V

    .line 350
    new-instance v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    .line 351
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040126

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 354
    iput-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 355
    new-instance v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NV:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    .line 356
    iget-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NV:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, p1, v5}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/vendorsettings/applications/RunningState;Lcom/android/vendorsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v1

    iput-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    .line 358
    const v1, 0x7f13028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    iget v1, p1, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_1

    .line 364
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-void

    .line 365
    :cond_1
    if-eqz p2, :cond_2

    .line 366
    const v1, 0x7f0c0605

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 369
    :cond_2
    const/4 v1, 0x0

    .line 370
    iget-object v5, p1, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 371
    iget-object v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 374
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 400
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 376
    :pswitch_0
    const v2, 0x7f0c0607

    .line 377
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 381
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/vendorsettings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .line 388
    :pswitch_1
    const v2, 0x7f0c0606

    .line 389
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 391
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 393
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/vendorsettings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 395
    :catch_0
    move-exception v5

    goto :goto_1

    .line 383
    :catch_1
    move-exception v5

    goto :goto_1

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/android/vendorsettings/applications/RunningState$ServiceItem;Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V
    .locals 10

    .prologue
    const/16 v9, 0x3e7

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 253
    if-eqz p3, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->lt()V

    .line 265
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 267
    :goto_1
    new-instance v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    .line 268
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040127

    iget-object v6, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 270
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    iput-object v5, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 272
    iput-object p1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 273
    new-instance v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v5}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NV:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    .line 274
    iget-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NV:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v6, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v7, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v0, v7}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/vendorsettings/applications/RunningState;Lcom/android/vendorsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    .line 276
    if-nez p4, :cond_1

    .line 277
    const v0, 0x7f130289

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->MT:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NW:Landroid/app/PendingIntent;

    .line 285
    :cond_2
    const v0, 0x7f13028a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    const v1, 0x7f1302fc

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NR:Landroid/widget/Button;

    .line 287
    const v1, 0x7f1302fd

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NS:Landroid/widget/Button;

    .line 292
    if-eqz p3, :cond_5

    iget v1, p2, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v1, v6, :cond_5

    iget v1, p2, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v1, v9, :cond_5

    .line 296
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    const v0, 0x7f130116

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-void

    .line 257
    :cond_3
    iget v0, p2, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v0, v9, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->lu()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 265
    goto/16 :goto_1

    .line 299
    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v1, :cond_6

    .line 300
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget v6, v6, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v7, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_3
    iget-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NR:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NR:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NW:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const v0, 0x7f0c0600

    :goto_4
    invoke-virtual {v5, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NS:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NS:Landroid/widget/Button;

    const v1, 0x1107002e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_action_app_error"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 334
    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 335
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v1, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NX:Landroid/content/ComponentName;

    .line 338
    iget-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NS:Landroid/widget/Button;

    iget-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NX:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 304
    :cond_6
    iget-boolean v1, p2, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OT:Z

    if-eqz v1, :cond_7

    .line 305
    const v1, 0x7f0c0603

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 308
    :cond_7
    if-eqz p1, :cond_8

    iget-object v1, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NW:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    iget-object v5, p1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0604

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 315
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 318
    :cond_8
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz p1, :cond_9

    const v1, 0x7f0c0601

    :goto_6
    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f0c0602

    goto :goto_6

    .line 325
    :cond_a
    const v0, 0x7f0c05ff

    goto/16 :goto_4

    :cond_b
    move v0, v3

    .line 338
    goto :goto_5

    .line 340
    :cond_c
    iget-object v0, v4, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NS:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public aG(I)V
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 666
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 668
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->ln()V

    goto :goto_0

    .line 671
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->at(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->ln()V

    goto :goto_0

    .line 675
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->at(Z)V

    .line 676
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->ln()V

    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method at(Z)V
    .locals 4

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->ls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const/4 p1, 0x1

    .line 485
    :cond_0
    if-eqz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NK:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/vendorsettings/applications/RunningState;Lcom/android/vendorsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    .line 499
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->lv()V

    .line 501
    :cond_1
    :goto_1
    return-void

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->NE:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->NF:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->lp:Landroid/widget/TextView;

    const v1, 0x7f0c05fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method c(Landroid/content/ComponentName;)Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3

    .prologue
    .line 567
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;

    .line 569
    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    :goto_1
    return-object v0

    .line 567
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 639
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 640
    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 641
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/applications/RunningState;->c(Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->ly()V

    .line 650
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->at(Z)V

    .line 652
    :cond_0
    return-void
.end method

.method ln()V
    .locals 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NJ:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 658
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 658
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 661
    :cond_1
    return-void
.end method

.method ls()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v3, 0x0

    .line 205
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Nh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lA()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 207
    :goto_0
    if-eqz v4, :cond_6

    move v1, v2

    .line 208
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 209
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 210
    iget v5, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    iget v6, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mUserId:I

    if-eq v5, v6, :cond_2

    .line 208
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lz()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 213
    :cond_2
    iget v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mUid:I

    if-ltz v5, :cond_3

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUid:I

    iget v6, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mUid:I

    if-ne v5, v6, :cond_0

    .line 216
    :cond_3
    iget-object v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eq v1, v0, :cond_5

    .line 225
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 226
    const/4 v2, 0x1

    .line 228
    :cond_5
    return v2

    :cond_6
    move-object v0, v3

    goto :goto_2
.end method

.method lt()V
    .locals 4

    .prologue
    .line 232
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NL:I

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040138

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NN:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NN:Landroid/widget/TextView;

    const v1, 0x7f0c05fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NL:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NL:I

    .line 239
    return-void
.end method

.method lu()V
    .locals 4

    .prologue
    .line 242
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NM:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040138

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NO:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NO:Landroid/widget/TextView;

    const v1, 0x7f0c05fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NO:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NM:I

    .line 249
    return-void
.end method

.method lv()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 443
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NN:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 450
    iput-object v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NN:Landroid/widget/TextView;

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NO:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NO:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    iput-object v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NO:Landroid/widget/TextView;

    .line 458
    :cond_2
    iput v3, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NM:I

    iput v3, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NL:I

    .line 460
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_6

    .line 461
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OV:Lcom/android/vendorsettings/applications/RunningState$UserState;

    if-eqz v0, :cond_5

    .line 463
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Nh:Z

    if-eqz v0, :cond_3

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState;->Ot:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v1, v0

    :goto_1
    move v2, v3

    .line 469
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 470
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V

    .line 469
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 472
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 473
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V

    .line 472
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningState$MergedItem;ZZ)V

    .line 479
    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 517
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 519
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mUid:I

    .line 520
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mUserId:I

    .line 521
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 522
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Nh:Z

    .line 524
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->MT:Landroid/app/ActivityManager;

    .line 525
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 527
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningState;->aq(Landroid/content/Context;)Lcom/android/vendorsettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    .line 528
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 533
    const v0, 0x7f040125

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 534
    invoke-static {p2, v1, v1, v2}, Lcom/android/vendorsettings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 536
    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 537
    const v0, 0x7f130016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NH:Landroid/view/ViewGroup;

    .line 538
    const v0, 0x7f130288

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NI:Landroid/view/ViewGroup;

    .line 539
    new-instance v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NI:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NK:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    .line 543
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->ensureData()V

    .line 545
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onPause()V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 552
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->pause()V

    .line 553
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 562
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onResume()V

    .line 563
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->ensureData()V

    .line 564
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 557
    const/16 v0, 0x55

    return v0
.end method